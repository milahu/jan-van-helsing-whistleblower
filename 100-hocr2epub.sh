#!/usr/bin/env bash

set -eux

dst=$(basename "$0" .sh).epub

doc_title="$(head -n1 readme.md | sed 's/^#\s*//')"

if false; then
  scan_resolution=600
else
  source 030-measure-page-size.txt
fi

if [ -e "$dst" ]; then
  echo "error: output exists: $dst"
  exit 1
fi

# downscale to 300 dpi
scale=$(python -c "print(300 / $scan_resolution)")

args=(
  hocr-to-epub-fxl
  --output "$dst"
  --scale "$scale"
  --image-format avif
  --text-format svg
  --doc-title "$doc_title"
  *-ocr/*.hocr
)

"${args[@]}" "$@"
echo "done $dst"

rm -rf $dst.unzip
mkdir $dst.unzip
cd $dst.unzip
unzip -q ../$dst
cd ..

echo "done $dst.unzip/index.html"
