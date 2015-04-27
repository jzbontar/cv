all: cv_en_job2015.pdf

%.pdf: %.tex
	pdflatex $<

clean:
	rm -f *.{aux,log,out,pdf}
