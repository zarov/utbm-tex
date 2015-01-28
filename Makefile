# ST50 report compilation
CC		= pdflatex
JOIN 	= pdfjoin 
OUT 	= report_st50.pdf

all: report #join

report: ABT-Internship_Report.tex
	$(CC) $?

join:
	$(JOIN) --rotateoversize 'false' --outfile $(OUT) couverture.pdf ABT-Internship_Report.pdf end.pdf

clean:
	rm -vf *.{aux,log,lof,toc,out,pdf,pyg}
