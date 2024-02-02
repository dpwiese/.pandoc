---
title: "Sample Notes"
date: "November 2019"
author: "Daniel Wiese"
subject: "Sample Notes"
keywords: [Markdown, Pandoc, Example]
lang: "en"
---

# Top Level Heading

Content here.
Here is some `inline-code`.
To run this example, navigate to the `./sample` directory and run Make with the following command.

```bash
make pdf
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

#### Paragraph Level Heading

Here is a paragraph.

## Hyperlinks

Here is a markdown hyperlink: [Pandoc](https://pandoc.org/).
Here is an HTML hyperlink: <a href="https://pandoc.org/" target="_blank">Pandoc</a>.

# Figures and Images

## Figures

Figures can be included, centered, and caption with either Markdown or HTML.

![Sample image caption in Markdown](./sample.png){width=200}

<figure>
  <img src="./sample.png" width="200"/>
  <figcaption>
    <i>Sample image caption in HTML, italicized</i>
  </figcaption>
</figure>

## Images

Centering an *image*, that is without a caption that would be associated with a figure, seems not so straightforward.
The easiest solution, if the behavior should be *only centered images in the entire document* seems to be to define all images as figures with a non-printing character for the caption, and use the following LaTeX (e.g. via `include-in-header`) to not display the figure label at all.

```latex
\usepackage{caption}
\captionsetup[figure]{labelformat=empty}
```

The Figure can be defined with

```markdown
![\ ](./sample.png){width=200}
```

Alternatively, to center only specific images within a document, the following can be used in the Markdown

```markdown
\centering
![](./sample.png){width=200}
\raggedright
```

which produces

\centering

![](./sample.png){width=200}

\raggedright
\flushleft

Pure LaTeX also works, e.g.

\begin{center}
\includegraphics[width=0.32\textwidth]{./sample.png}
\end{center}

# Quotes and a Reference

Below is a quote with a reference [@anderson.aerodynamics.2010].

> Aerodynamics is fun!

# References
