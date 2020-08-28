#!/bin/bash

mapfile -t cusswords < cuss-words.txt


cp lyrics.txt output.txt

echo "${#cusswords[@]}"
for i in "${cusswords[@]}"
do
	
	sed -i "s/$i/bleep/gI" output.txt
done
