# Pandoc Data Files

From the [docs](https://pandoc.org/MANUAL.html):

> Pandoc is a Haskell library for converting from one markup format to another, and a command-line tool that uses this library.

This repository contains the Pandoc data files which I've used to generate documentation.
My post here: [danielwiese.com/posts/documentation](https://danielwiese.com/posts/documentation/) describes how the contents of this repository are used to generate documentation.
The location of this repository can be specified with `--data-dir` and may default to: `$HOME/.pandoc`.

The Pandoc data files that are included are [Citation Style Language](https://citationstyles.org/) or CSL files to format references, [Pandoc Filters](https://pandoc.org/filters.html), including [Lua Filters](https://pandoc.org/lua-filters.html), some themes and templates, and finally a small example that converts a Markdown file with inline LaTeX and references an entry from a `.bib` file.

Read the [Pandoc docs](https://pandoc.org/MANUAL.html) to learn more about Pandoc.

## WIP - Updates

Updated to Pandoc [`2.16.2`](https://pandoc.org/releases.html#pandoc-2.16.2-2021-11-21)

Current usage:

```
~/.pandoc/md2pdf.sh sample.md sample.bib sample.pdf
```
