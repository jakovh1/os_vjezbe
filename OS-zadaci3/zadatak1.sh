#!/bin/bash

if [[ $# -ne 2 ]]; then
	echo "Potrebno je proslijediti točno 2 argumenata."
	exit 1
fi

path=$1
extension=$2
counter=0


for file in "$path"/*; do
	if [[ "$file" == *."$extension" ]]; then
		echo "$(basename $file)"
		((counter++))
	fi
done

if [[ $counter -eq 0 ]]; then
	echo "Nema takvih datoteka."
	exit 1
fi
