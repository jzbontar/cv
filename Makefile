all: cv_en_intern2015.pdf cv_en.pdf cv_sl.pdf

%.pdf: %.tex
	pdflatex $<
	bibtex $(<:%.tex=%)
	pdflatex $<
	pdflatex $<

clean:
	rm -f *.{aux,log,out,pdf}
