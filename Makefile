.PHONY: clean

all: html word pdf
	echo All files are now up to date

html: ./docs/index.html

./docs/index.html: mvmr-example.Rmd
	Rscript -e 'rmarkdown::render("$<", output_format = "html_document")' && \
	mv mvmr-example.html ./docs/index.html

word: ./docs/mvmr-example.docx 

./docs/mvmr-example.docx: mvmr-example.Rmd
	Rscript -e 'rmarkdown::render("$<", output_format = "word_document")'
	mv mvmr-example.docx ./docs/mvmr-example.docx
	
pdf: ./docs/mvmr-example.pdf

./docs/mvmr-example.pdf: mvmr-example.Rmd
	Rscript -e 'rmarkdown::render("$<", output_format = "pdf_document")'
	mv mvmr-example.pdf ./docs/mvmr-example.pdf

clean:
	rm ./docs/*
