# ST50 report compilation
CC		= pdflatex
JOIN 	= pdfjoin 
OUT 	= report_st50.pdf

all: report #join

report: report.tex
	$(CC) $?

join:
	$(JOIN) --rotateoversize 'false' --outfile $(OUT) couverture.pdf report.pdf end.pdf

clean:
	rm -vf *.{aux,log,lof,toc,out,pdf,pyg}
