all: cv_en_intern2014.pdf cv_en.pdf cv_sl.pdf

%.pdf: %.tex
	pdflatex $<

clean:
	rm -f *.{aux,log,out,pdf}
