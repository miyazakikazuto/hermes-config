#!/data/data/com.termux/files/usr/bin/bash
set -euo pipefail

MODE="${1:-}"
SRC="${2:-}"
DST="${3:-}"

if [[ -z "$MODE" || -z "$DST" ]]; then
  echo "Usage:"
  echo "  $0 backup <source_env> <backup_path>"
  echo "  $0 restore <backup_path> <target_env>"
  exit 1
fi

if [[ "$MODE" == "backup" ]]; then
  if [[ ! -f "$SRC" ]]; then
    echo "Source not found: $SRC"; exit 1
  fi
  if command -v age >/dev/null 2>&1; then
    age -p -o "$DST" "$SRC"
    echo "Backup created (age): $DST"
  else
    if ! command -v gpg >/dev/null 2>&1; then
      echo "Neither age nor gpg found"; exit 1
    fi
    gpg --yes --batch --symmetric --cipher-algo AES256 -o "$DST" "$SRC"
    echo "Backup created (gpg): $DST"
  fi
elif [[ "$MODE" == "restore" ]]; then
  if [[ ! -f "$DST" ]]; then
    mkdir -p "$(dirname "$DST")"
  fi
  if command -v age >/dev/null 2>&1; then
    age -d -o "$DST" "$SRC"
    echo "Restored (age): $DST"
  else
    if ! command -v gpg >/dev/null 2>&1; then
      echo "Neither age nor gpg found"; exit 1
    fi
    gpg --yes --batch --decrypt -o "$DST" "$SRC"
    echo "Restored (gpg): $DST"
  fi
else
  echo "Unknown mode: $MODE"; exit 1
fi
