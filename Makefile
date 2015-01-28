.PHONY: report
.PHONY: join
.PHONY: clean

REPORT		= report
MAIN_PAGE 	= main_page.pdf
END_PAGE 	= end_page.pdf
OUT 		= report_merged.pdf

all: report #join

report: $(REPORT).tex
	pdflatex -shell-escape $?

join: $(REPORT).pdf
	gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=$(OUT) $(MAIN_PAGE) $(REPORT) $(END_PAGE) 

clean:
	rm -vf *.{aux,log,lof,toc,out,pdf,pyg}
