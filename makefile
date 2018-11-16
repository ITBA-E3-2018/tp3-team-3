##################################################################
# Makefile for LaTeX
##################################################################

FILES = e3_tp3_main
OTHER = *~ *.aux *.dvi *.toc *.bbl *.blg *.gz *.out *.thm *.ps *.idx *.ilg *.ind *.log *.fdb_latexmk *.fls

informe: $(FILES).tex
	@pdflatex -interaction=batchmode $(FILES).tex
	@pdflatex -interaction=batchmode $(FILES).tex
	@rm -rf $(OTHER)
	@echo Finished Compiling
