#!/bin/bash

if [[ $# -ne 1 ]]; then
	echo "Potrebno je proslijediti samo jedan argument"
	exit 1
fi

if [[ -d "$1" && -d "$1".git/ ]]; then
	touch "$1"repozitorij_info.txt
	cd "$1"
	git add repozitorij_info.txt
	git commit -m "Informacije repozitorija"
	git log
else
	echo "ne postoji direktorij na zadanoj putanji ili zadani direktorij nije git repozitorij"
	exit 1
fi
