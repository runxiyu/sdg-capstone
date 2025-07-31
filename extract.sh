#!/bin/sh

set -x

pdfimages paper.pdf img

for i in *.ppm
do
	convert "$i" "$(basename "$i" .ppm)".png
done
