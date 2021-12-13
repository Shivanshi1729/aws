#!/bin/bash

pandoc $1.md \
    -s \
    --toc \
    -H quote.tex \
    -V author=Shivanshi \
    -V geometry="left=2cm,right=2cm,top=1cm,bottom=2cm" \
    -V fontsize=12pt \
    -V colorlinks=true \
    -V linkcolor=blue \
    -V urlcolor=red \
    -V toccolor=blue \
    -o ./pdf/$1.pdf