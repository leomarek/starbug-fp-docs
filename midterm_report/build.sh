#!/bin/sh
# Build the STARBUG midterm report. Needs pdflatex, bibtex, TikZ and pgfplots (standard TeX Live).
# IEEEtran.cls and IEEEtran.bst are included in this folder.
set -e
cd "$(dirname "$0")"
pdflatex -interaction=nonstopmode main
bibtex main
pdflatex -interaction=nonstopmode main
pdflatex -interaction=nonstopmode main
cp main.pdf STARBUG_Midterm_Report.pdf
