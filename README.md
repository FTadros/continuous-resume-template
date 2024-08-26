# Continuous Resume

## [Get Started](GETTING_STARTED.md)

## Description

Any pushed changes made to `src/*.tex` trigger a Github Action that build a PDF and deploy to your `resume` subdomain using GIthub Pages.

When run locally, This project uses a filewatcher to watch for changes to `src/*.tex` files, and then runs a `resume-builder` container to build the PDF.



