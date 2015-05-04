#!/bin/bash


pdflatex -interaction=batchmode -draftmode document.tex
bibtex document 
pdflatex -interaction=batchmode -draftmode document.tex
pdflatex -interaction=batchmode -draftmode document.tex
pdflatex document.tex 

