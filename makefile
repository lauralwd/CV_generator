# Makefile for building your CV

SHELL := /bin/bash

# Main TeX source and output
TEX := cv.tex
PDF := cv.pdf

# Dependencies: vars.tex, main setup
DEPENDENCIES := vars.tex mysetup.tex

# Build with latexmk for automatic reruns
LATEXMK := latexmk -xelatex -interaction=nonstopmode -halt-on-error

.PHONY: all clean

# Default target: build PDF
all: $(PDF)

# PDF depends on .tex sources
$(PDF): $(TEX) $(DEPENDENCIES)
	@echo "Building $@ from $<"
	$(LATEXMK) $<

# Clean auxiliary files
clean:
	latexmk -C
