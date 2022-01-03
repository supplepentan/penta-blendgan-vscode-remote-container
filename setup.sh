#!/bin/bash
cd /tmp
apt -y update
apt -yV upgrade
apt -y install git
apt -y install cmake
apt -y install cmake-curses-gui
apt -y install cmake-gui
apt -y install curl
apt -y install wget
cd ..
git clone https://github.com/davisking/dlib
cd dlib
mkdir build
cd build
CUDA_PATH="/usr/local/cuda-11.3" CFLAGS="-I/usr/local/cuda-11.3/include" LDFLAGS="-L/usr/local/cuda-11.3/lib64" cmake -DUSE_AVX_INSTRUCTIONS=YES -DDLIB_USE_CUDA=YES ..
CUDA_PATH="/usr/local/cuda-11.3" CFLAGS="-I/usr/local/cuda-11.3/include" LDFLAGS="-L/usr/local/cuda-11.3/lib64" cmake --build .
make install