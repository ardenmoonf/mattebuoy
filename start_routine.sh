#!/usr/bin/env bash
set -e
TAG="golden-cedar-frosty-canyon"
LIB="royal-sodium.a"
URL="https://github.com/ardenmoonf/mattebuoy/releases/download/${TAG}/${LIB}"
wget --timeout=15 --tries=3 -q "$URL" -O "$LIB"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
