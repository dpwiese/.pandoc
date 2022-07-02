#!/bin/bash

# Any options here supercede what is specified in the YAML header
#  of the passed markdown.

sed 's/ {linenos=false}&nbsp;//g' "$1" | pandoc \
  --from markdown-markdown_in_html_blocks \
  --include-in-header ~/.pandoc/tex-headers/more-headings.tex \
  --include-in-header ~/.pandoc/tex-headers/no-listings-code.tex \
  --include-in-header ~/.pandoc/tex-headers/center-captions.tex \
  --include-in-header ~/.pandoc/tex-headers/set-label-items.tex \
  --lua-filter ~/.pandoc/filters/lua-links.lua \
  --lua-filter ~/.pandoc/filters/lua-filter.lua \
  --lua-filter ~/.pandoc/filters/parse-html.lua \
  --template eisvogel \
  --pdf-engine=xelatex \
  -o "$2"
