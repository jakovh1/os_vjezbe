#!/bin/bash

if [[ $# -ne 1 ]]; then
	echo "Potrebno je proslijediti samo jedan argument"
	exit 1
fi

for dir in ./*/; do
	if [[ "$(basename $dir)" == $1  ]]; then
		files=()
		for file in "$dir"*; do
			if [[ -f $file ]]; then
				files+=("$(basename $file)")
			fi
		done

		if [[ ${#files[@]} -gt 0 ]]; then
			cd "$dir"
			zip -r svi_zapisi.zip ${files[@]}
			cd ..
			mv "$dir"svi_zapisi.zip ./
		fi
		exit 0
	fi
done

echo "Direktorij ne postoji"
exit 1


