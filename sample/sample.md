---
title: "Sample Notes"
date: "November 2019"
author: "Daniel Wiese"
subject: "Sample Notes"
keywords: [Markdown, Pandoc, Example]
---

# Top Level Heading

Content here.
Here is some `inline-code`.
To run this example, configure and use:

```bash
$ ~/.pandoc/md2pdf.sh sample.md sample.pdf
```

Or use the command below.

```bash
$ pandoc sample.md \
    --from markdown \
    --include-in-header ~/.pandoc/tex-headers/toc-safe-headings.tex \
    --include-in-header ~/.pandoc/tex-headers/no-listings-code.tex \
    --include-in-header ~/.pandoc/tex-headers/link-color.tex \
    -V urlcolor=cyan \
    -V linkcolor:blue \
    -V geometry:letterpaper \
    -V geometry:margin=1in \
    -V mainfont="SFNS Display" \
    -V monofont="Menlo Regular" \
    -V sansfont="Helvetica" \
    -V fontsize=10pt \
    --lua-filter ~/.pandoc/filters/lua-filter.lua \
    --template eisvogel \
    --pdf-engine=xelatex \
    --toc \
    --number-sections \
    --bibliography=sample.bib \
    --csl ieee-with-url.csl \
    --citeproc \
    -o sample.pdf
```

## Second Level Heading

Here is some math using `$$`with Latex:

$$
y=mx+b
$$

Here is inline math $y=f(x)$ and more math using `equation` environment:

\begin{equation}\label{eq.mass-conservation}
  \underbrace{\frac{\partial}{\partial t}\int_{V}\rho dV}_{\text{Rate of change of mass}}
  =\underbrace{-\oint_{S}\rho\underline{v}\cdot\underline{n}dS}_{\text{Net inflow of mass}}
\end{equation}

### Third Level Heading

Variables can be put in the YAML metadata block as well.
For example, to set the font size:

```yaml
fontsize: "10pt"
```

## Hyperlinks

Here is a markdown hyperlink: [Pandoc](https://pandoc.org/).
Here is an HTML hyperlink: <a href="https://pandoc.org/" target="_blank">Pandoc</a>.

# Quotes and a Reference

Below is a quote with a reference [@anderson.aerodynamics.2010].

> Aerodynamics is fun!

# References
