all: compile

compile:
	pdflatex book.tex && bibtex book && pdflatex book.tex && pdflatex book.tex
	cp book.pdf docs/ && rm -f book.pdf book.aux book.bbl book.blg book.log book.out book.toc && ls -lh docs/book.pdf
