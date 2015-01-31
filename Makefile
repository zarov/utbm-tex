.PHONY: report
.PHONY: clean

REPORT		= report

all: report

report: $(REPORT).tex
	pdflatex -shell-escape $?

clean:
	rm -vf *.{aux,log,lof,toc,out,pdf,pyg}
