#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")/.."

echo "======================================"
echo "       Build-LFS / Kapil Linux"
echo "======================================"
echo

./auto/config

sudo lb build 2>&1 | tee build.log

echo
echo "======================================"
echo "         BUILD FINISHED"
echo "======================================"
echo

ls -lh *.iso 2>/dev/null || true
