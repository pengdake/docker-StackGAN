#!/bin/bash

# Downloads the word embeddings and image datasets to StackGAN/Data.
# Preprocesses the images using misc/preprocess_*.py

function download() {
	# curl follow redirect piped to unzip
	TMPFILE="tmp.zip"
	wget "$1" -O $TMPFILE
	unzip -d $PWD $TMPFILE
	rm $TMPFILE
}

cd StackGAN/Data
echo "Downloading flower embeddings..."
download "https://github.com/brangerbriz/docker-StackGAN/releases/download/datasets/flowers.zip"

cd flowers
echo "Downloading flower images..."
download "https://github.com/brangerbriz/docker-StackGAN/releases/download/datasets/102flowers.zip"

cd ../..
echo "Preprocessing flower images..."
python "misc/preprocess_flowers.py"



