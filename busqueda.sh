#!/bin/bash

path="/home/zer0/"
w="pastor"

cd "$path"
for file in tacos
do
	grep -Rill "$w" "$file"

done
