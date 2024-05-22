rfinance-2024-harte:     rfinance-2024-harte.org
	# FIX: use -8bit in xelatex options to stop tabs rendering
	# See:
	#     https://tex.stackexchange.com/questions/14771/tabs-in-output-file-written-by-xelatex-and-pdflatex-are-different/14776#14776
	# https://emacs.stackexchange.com/questions/15264/org-export-to-pdf-inserts-i-for-indentation-in-code 
	xelatex -8bit -shell-escape -interaction nonstopmode $@.tex
	bibtex $@
	xelatex -8bit -shell-escape -interaction nonstopmode $@.tex
	xelatex -8bit -shell-escape -interaction nonstopmode $@.tex

scratch:     scratch.org
	# FIX: use -8bit in xelatex options to stop tabs rendering
	# See:
	#     https://tex.stackexchange.com/questions/14771/tabs-in-output-file-written-by-xelatex-and-pdflatex-are-different/14776#14776
	# https://emacs.stackexchange.com/questions/15264/org-export-to-pdf-inserts-i-for-indentation-in-code 
	xelatex -8bit -shell-escape -interaction nonstopmode $@.tex
	bibtex $@
	xelatex -8bit -shell-escape -interaction nonstopmode $@.tex
	xelatex -8bit -shell-escape -interaction nonstopmode $@.tex

scratch2:     scratch2.tex
	pdflatex -shell-escape $<

clean:
	rm -f rfinance-2024-harte.*.vrb
	rm -f rfinance-2024-harte.aux
	rm -f rfinance-2024-harte.bbl
	rm -f rfinance-2024-harte.blg
	rm -f rfinance-2024-harte.log
	rm -f rfinance-2024-harte.nav
	rm -f rfinance-2024-harte.out
	rm -f rfinance-2024-harte.pyg
	rm -f rfinance-2024-harte.snm
	rm -f rfinance-2024-harte.toc
