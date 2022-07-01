# Pandoc Data Files

## Using

Current usage:

```
~/.pandoc/md2pdf.sh sample.md sample.pdf
```

## Introduction

From the [docs](https://pandoc.org/MANUAL.html):

> Pandoc is a Haskell library for converting from one markup format to another, and a command-line tool that uses this library.

This repository contains the Pandoc data files which I've used to generate documentation.
My post here: [danielwiese.com/posts/documentation](https://danielwiese.com/posts/documentation/) describes how the contents of this repository are used to generate documentation.
The location of this repository can be specified with `--data-dir` and may default to: `$HOME/.pandoc`.

The Pandoc data files that are included are [Citation Style Language](https://citationstyles.org/) or CSL files to format references, [Pandoc Filters](https://pandoc.org/filters.html), including [Lua Filters](https://pandoc.org/lua-filters.html), some themes and templates, and finally a small example that converts a Markdown file with inline LaTeX and references an entry from a `.bib` file.

Read the [Pandoc docs](https://pandoc.org/MANUAL.html) to learn more about Pandoc.

## Version

At the time of writing, the command `pandoc --version` produces the following output:

```
pandoc 2.18
Compiled with pandoc-types 1.22.2, texmath 0.12.5, skylighting 0.12.3,
citeproc 0.7, ipynb 0.2, hslua 2.2.0
Scripting engine: Lua 5.4
User data directory: /Users/dpwiese/.pandoc
Copyright (C) 2006-2022 John MacFarlane. Web:  https://pandoc.org
This is free software; see the source for copying conditions. There is no
warranty, not even for merchantability or fitness for a particular purpose.
```

