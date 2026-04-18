#!/bin/bash
counter=1
for file in zadatak3/screenshots/*; do
	echo $file
	mv $file "${file%/*}"/screenshot_"$counter"_"$(basename "$file")"
	((counter++))
done

ls zadatak3/screenshots
exit 0
