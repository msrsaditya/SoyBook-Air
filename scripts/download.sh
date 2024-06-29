#!/bin/bash

url="$1"
extension="${url##*.}"

printf "Enter the File Name: "
read -r filename

printf "Enter the Number of Connections: "
read -r connections

output="/Users/shashank/Downloads/${filename}.${extension}"

axel --num-connections="$connections" --output="$output" --no-clobber --verbose --alternate "$url"
