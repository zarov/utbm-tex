OUT = report_st50.pdf

all: report #join

report: report.tex
	pdflatex $?

join:
	gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=$(OUT) main_page.pdf report.pdf end_page.pdf 

clean:
	rm -vf *.{aux,log,lof,toc,out,pdf,pyg}
