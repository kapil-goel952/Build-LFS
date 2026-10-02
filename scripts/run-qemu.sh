#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")/.."

ISO="kapil-linux-amd64.hybrid.iso"

if [ ! -f "$ISO" ]; then
    echo "ERROR: ISO not found:"
    echo "  $ISO"
    echo
    echo "Build the OS first with:"
    echo "  ./scripts/build.sh"
    exit 1
fi

echo "Starting Kapil Linux in QEMU..."

qemu-system-x86_64 \
    -m 4096 \
    -smp 4 \
    -cdrom "$ISO"
