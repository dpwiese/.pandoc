#!/bin/bash

# Any options here supercede what is specified in the YAML header
#  of the passed markdown.

sed 's/ {linenos=false}&nbsp;//g' "$1" | pandoc \
  --defaults defaults.yaml \
  -o "$2"
