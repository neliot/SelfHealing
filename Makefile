paper: paper.tex thesis.bib IEEEtran.cls figures
	pdflatex paper
	bibtex paper
	pdflatex paper
	pdflatex paper

MYFILE = paper.txt
clean:
	rm -f $(foreach ext, aux log out toc lof lot bbl blg, ${MYFILE:.txt=.${ext}}) 
	
