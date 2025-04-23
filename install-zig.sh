#!/bin/bash

## For Open-suse tumbleweed

ZIG_VERSION = zig-linux-x86_64-0.15.0-dev.379+ffd85ffcd.tar.xz


wget https://ziglang.org/builds/${ZIG_VERSION} || { echo "Download failed"; }

tar xvf ${ZIG_VERSION} || { echo "Extraction failed"; }
rm -rf ${ZIG_VERSION}
mv ${ZIG_VERSION} /usr/local/zig

echo "export PATH=\"/usr/local/zig:\$PATH\"" >> ~/.bashrc

source ~/.bashrc

zig version
