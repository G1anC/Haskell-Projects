#!/bin/bash

input=$1
clusters=$2
convergence=$3

clear
./img2txt "$input" .ic_converted_file
echo "Time to compress image:"
time (./imageCompressor -n "$clusters" -l "$convergence" -f ./.ic_converted_file > ./.ic_output_file)
./txt2img ./.ic_output_file output.jpg

