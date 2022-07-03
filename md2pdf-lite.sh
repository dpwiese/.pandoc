#!/bin/bash

# To use:
# ~/.pandoc/md2pdf-lite.sh <file_path>/defaults.yaml <in>.md <out>.pdf

sed 's/ {linenos=false}&nbsp;//g' "$2" | pandoc \
  --defaults "$1" \
  -o "$3"
