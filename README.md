# Pandoc User Data Directory

## Introduction

This repository contains my Pandoc user data directory.
Cloning this into the user data directory in another environment will provide some basic TeX headers, filters, templates, and defaults that should make the generation of documents easier.
My post here: [danielwiese.com/posts/documentation](https://danielwiese.com/posts/documentation/) describes how the contents of this repository are used to generate documentation.

From the [docs](https://pandoc.org/MANUAL.html):

> Pandoc is a Haskell library for converting from one markup format to another, and a command-line tool that uses this library.

The Pandoc data files that are included are [Citation Style Language](https://citationstyles.org/) or CSL files to format references, [Pandoc Filters](https://pandoc.org/filters.html), including [Lua Filters](https://pandoc.org/lua-filters.html), some themes and templates, and finally a small example that converts a Markdown file with inline LaTeX and references an entry from a `.bib` file.

Read the [Pandoc docs](https://pandoc.org/MANUAL.html) to learn more about Pandoc.

## Using

The recommended method for calling Pandoc is via Make.
The `./sample` directory contains an example document and makefile.

Note that the makefile rules *do not* capture all of the dependencies of the output.
For example the filters or tex headers.
In the sample makefile provided, it does include `defaults.yaml` and `metadata.yaml` as prerequesites, but often, given this is not all of the dependencies, this might not make sense.

If strict control over all of the inputs that may affect the compiled document is desired, it is probably best to include and track all dependencies along with the document source.

## Installing

To get started, clone this repository into Pandoc's default user data directory, or anywhere else as specified with `--data-dir`.
The default location of the user data directory can be determined by running `pandoc --version`.

### Fonts

The Stackexchange post [How to set a font family with pandoc?](https://tex.stackexchange.com/questions/234786/how-to-set-a-font-family-with-pandoc) was a helpful resource.

```sh
# Install fontconfig
brew install fontconfig

# List available fonts
fc-list | grep "SF-Pro-Text-Regular"
```

## Version

At the time of writing, the command `pandoc --version` produces the following output:

```
pandoc 3.1.11.1
Features: +server +lua
Scripting engine: Lua 5.4
```

The (slightly modified) [Eisvogel](https://github.com/Wandmalfarbe/pandoc-latex-template) LaTeX template version [2.4.2](https://github.com/Wandmalfarbe/pandoc-latex-template/releases/tag/2.4.2) is used.
