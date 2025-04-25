#!/usr/bin/env bash
shopt -s nullglob

SRC_DIR="assets/img"

for file in "$SRC_DIR"/*.png; do
  base="$(basename "$file" .png)"
  out="$SRC_DIR/${base}.webp"
  cwebp -q 80 -resize 764 0 "$file" -o "$out"
  echo "→ $file → $out"
done
