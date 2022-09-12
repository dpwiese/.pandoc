#!/bin/bash

# Any options here supercede what is specified in the YAML header
#  of the passed markdown.

sed 's/ {linenos=false}&nbsp;//g' "$1" | pandoc \
  --from markdown-markdown_in_html_blocks \
  --include-in-header ~/.pandoc/tex-headers/set-font.tex \
  --include-in-header ~/.pandoc/tex-headers/headings.tex \
  --include-in-header ~/.pandoc/tex-headers/no-listings-code.tex \
  --include-in-header ~/.pandoc/tex-headers/link-color.tex \
  --include-in-header ~/.pandoc/tex-headers/center-captions.tex \
  --include-in-header ~/.pandoc/tex-headers/set-label-items.tex \
  -V urlcolor=cyan \
  -V linkcolor:blue \
  -V geometry:margin=1in \
  -V mainfont="SF Pro" \
  -V monofont="Menlo Regular" \
  -V fontsize=10pt \
  --lua-filter ~/.pandoc/filters/lua-links.lua \
  --lua-filter ~/.pandoc/filters/lua-filter.lua \
  --lua-filter ~/.pandoc/filters/parse-html.lua \
  --lua-filter ~/.pandoc/filters/set-secnum-depth.lua \
  --template eisvogel \
  --pdf-engine=xelatex \
  --number-sections \
  --toc \
  --toc-depth=1 \
  -o "$2"
