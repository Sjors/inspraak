all: consultatie.pdf

consultatie.pdf: consultatie.md
	pandoc consultatie.md -o consultatie.pdf --from markdown --filter pandoc-include --template eisvogel --listings --toc --number-sections

clean:
	rm *.pdf