#!/bin/bash
echo "Generating SVGs in /target directory..."

rm -Rf target
mkdir -p target

for f in src/*.dot
do
  echo "Processing file '$f'..."
  out=`basename $f .dot`
  dot -Tsvg -o "target/${out}.svg" $f
done