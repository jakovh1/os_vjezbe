#!/bin/bash

if [[ $1 -lt 1 || $1 -gt 10 ]]; then
	echo "Broj nije unutar raspona 1-10"
	exit 1
fi

niz=()

for (( i=1; i <= $1; i++ )); do
	niz+=($i)
done

echo ${niz[@]} > brojevi.txt
exit 0
