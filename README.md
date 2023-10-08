## Build

Install the Pandoc, Latex and the [Eisvogel](https://github.com/Wandmalfarbe/pandoc-latex-template) LaTex template.

Also install:

* [pandoc-inlucde](https://github.com/DCsunset/pandoc-include)
* [pandoc-latex-admonition](https://github.com/chdemko/pandoc-latex-admonition)


```bash
make
```

When making significant changes, ensure that the `--threshold` value in `Makefile` is low enough that at minimum the legend below the TOC and below the range-diff remained colored.

## Style

Syntax highlighting uses listings. See its [list of languages](https://www.overleaf.com/learn/latex/Code_listing#Supported_languages).

The range-diff PDF is generated using [aha](https://github.com/theZiz/aha) and [wkhtmltopdf](https://wkhtmltopdf.org), as follows:

```bash
git range-diff ... --color=always | aha > range.html
wkhtmltopdf range.html range.pdf
pdfcrop range.pdf
```

(`range.html` was manually edited to add line breaks)