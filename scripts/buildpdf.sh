#!/bin/bash
# docker build -t latex .

cd src/ && echo "Building LaTeX file..."

docker run --rm -i -v "$PWD":/data resume-builder pdflatex -interaction=nonstopmode *.tex && echo "LaTeX build complete."

__name__
