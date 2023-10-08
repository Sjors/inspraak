all: consultatie.pdf

consultatie.pdf: consultatie.md
	pandoc consultatie.md -o consultatie.pdf --from markdown --filter pandoc-include --filter pandoc-latex-admonition --template eisvogel --listings --toc --number-sections

clean:
	rm *.pdf