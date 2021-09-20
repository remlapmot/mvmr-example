# R and Stata example code for a Mendelian randomization analysis

Supplementary material for Sanderson et al., Nature Reviews Methods.

## Setup

`custom-reference.docx` is created from `pandoc` at the command line by running
```
pandoc -o custom-reference.docx --print-default-data-file reference.docx
```

Then open `custom-reference.docx` in Word and edit the `Normal` and `Verbatim Char` paragraph styles to use a smaller font size.

## Building the output

If opened as a project in RStudio click `Build All` in the Build pane.

Otherwise from the command line run
```
make all
```
