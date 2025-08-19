#!/usr/bin/env bash

cd "$(dirname "$0")"
src=060-rotate-crop-level
dst=$(basename "$0" .sh)

mkdir -p $dst

for i in $src/*; do

  # FIXME use $num_pages and $scan_format
  page_number=${i%.tiff}
  page_number=${page_number##*/}
  page_number=${page_number#0}
  page_number=${page_number#0}

  o=$dst/${i##*/}

  echo + deskew -o "$o" "$i"
  deskew -o "$o" "$i"

  # [ "$page_number" = 10 ] && break # debug

done
