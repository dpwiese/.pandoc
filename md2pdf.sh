#!/bin/bash

sed 's/ {linenos=false}&nbsp;//g' "$1" | pandoc \
  --from markdown \
  --include-in-header ~/.pandoc/tex-headers/headings.tex \
  --include-in-header ~/.pandoc/tex-headers/no-listings-code.tex \
  --include-in-header ~/.pandoc/tex-headers/link-color.tex \
  -V urlcolor=cyan \
  -V linkcolor:blue \
  -V geometry:letter \
  -V geometry:margin=1in \
  -V mainfont="SF Pro" \
  -V monofont="Menlo Regular" \
  -V fontsize=10pt \
  --lua-filter ~/.pandoc/filters/lua-links.lua \
  --template eisvogel \
  --pdf-engine=xelatex \
  -o "$2"
