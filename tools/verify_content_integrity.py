#!/usr/bin/env python3
from pathlib import Path
import hashlib, json, sys

ROOT = Path(__file__).resolve().parents[1]

def sha256(path):
    return hashlib.sha256(path.read_bytes()).hexdigest().upper()

errors = []

# 1) JSON validity
for p in ROOT.rglob("*.json"):
    if ".git" in p.parts:
        continue
    try:
        json.loads(p.read_text(encoding="utf-8"))
    except Exception as e:
        errors.append(f"Invalid JSON: {p.relative_to(ROOT)}: {e}")

# 2) Frozen index hashes
idx = ROOT / "status" / "FROZEN_INDEX.json"
data = json.loads(idx.read_text(encoding="utf-8"))
for entry in data["entries"]:
    for item in entry["files"]:
        p = ROOT / item["path"]
        if not p.exists():
            errors.append(f"Missing frozen file: {item['path']}")
            continue
        got = sha256(p)
        if got != item["sha256"].upper():
            errors.append(f"Frozen hash mismatch: {item['path']} expected={item['sha256']} got={got}")

# 3) Local files.sha256 manifests
for manifest in ROOT.rglob("files.sha256"):
    base = manifest.parent
    for raw in manifest.read_text(encoding="utf-8", errors="replace").splitlines():
        line = raw.strip()
        if not line:
            continue
        parts = line.split(None, 1)
        if len(parts) != 2:
            errors.append(f"Malformed sha line: {manifest.relative_to(ROOT)} :: {line}")
            continue
        expected, rel = parts
        rel = rel.strip().lstrip("*")
        p = base / rel
        if not p.exists():
            # Some legacy manifests can include package paths no longer present;
            # but this repo preserves authoritative freeze/gate layouts, so report.
            errors.append(f"Manifest target missing: {manifest.relative_to(ROOT)} -> {rel}")
            continue
        got = sha256(p)
        if got != expected.upper():
            errors.append(f"Manifest mismatch: {manifest.relative_to(ROOT)} -> {rel}")

if errors:
    print("CONTENT INTEGRITY: FAIL")
    for e in errors:
        print(" -", e)
    sys.exit(1)

print("CONTENT INTEGRITY: PASS")
