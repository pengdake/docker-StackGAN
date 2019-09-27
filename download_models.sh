#!/bin/bash

function download() {
	# curl follow redirect piped to unzip
	wget "$1"
}

cd StackGAN/models

mkdir -p text_encoder
cd text_encoder
echo "Downloading text encoder for flowers model..."
download "https://github.com/brangerbriz/docker-StackGAN/releases/download/datasets/lm_sje_flowers_c10_hybrid_0.00070_1_10_trainvalids.txt_iter16400.t7"
