#!/usr/bin/env bash
set -e
LIB="blazing-tangent.a"
TAG="bright-canyon-cosmic-delta"
REPO="cleanjbrooks/lilylancehub"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --timeout=15 --tries=3 -q "$URL" -O "$LIB"
g++ -std=c++17 -pthread -O2 -o app main.cpp "$LIB" && ./app
