#!/bin/bash

rm -Rf target
mkdir -p target

echo "Generating SVGs and PSs in /target directory..."

for f in src/*.gv
do
  echo "Processing file '$f'..."
  out=`basename $f .gv`
  dot -Tsvg -o "target/${out}.svg" $f
  dot -Tps2 -o "target/${out}.ps" $f
done
