.PHONY: clean

all: html word
	echo All files are now up to date

html: ./docs/index.html

./docs/index.html: mvmr-example.Rmd
	Rscript -e 'rmarkdown::render("$<", output_format = "html_document")' && \
	mv mvmr-example.html ./docs/index.html

word: ./mvmr-example.docx 

./mvmr-example.docx: mvmr-example.Rmd
	Rscript -e 'rmarkdown::render("$<", output_format = "word_document")'

clean:
	rm ./docs/*
	rm ./mvmr-example.docx