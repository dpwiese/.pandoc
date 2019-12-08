#!/bin/bash

sed 's/ {linenos=false}&nbsp;//g' "$1" > temp.md; \
pandoc temp.md \
    --from markdown+yaml_metadata_block \
    --include-in-header ~/.pandoc/headings.tex \
    --include-in-header ~/.pandoc/no-listings-code.tex \
    --include-in-header ~/.pandoc/link-color.tex \
    -V urlcolor=cyan \
    -V linkcolor:blue \
    -V geometry:letter \
    -V geometry:margin=1in \
    -V mainfont="SFNS Display" \
    -V monofont="Menlo Regular" \
    -V fontsize=10pt \
    --lua-filter ~/.pandoc/lua-links.lua \
    --template eisvogel \
    --pdf-engine=xelatex \
    -o "$2"; rm temp.md
