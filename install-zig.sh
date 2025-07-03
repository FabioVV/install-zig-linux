!/bin/bash

ZIG_VERSION=zig-x86_64-linux-0.15.0-dev.889+b8ac740a1.tar.xz
ZIG_EXTRACTED=zig-x86_64-linux-0.15.0-dev.889+b8ac740a1

wget https://ziglang.org/builds/${ZIG_VERSION} || {
  echo "Download failed"
  exit 1
}

tar -xvJf ${ZIG_VERSION} || {
  echo "Extraction failed"
  exit 1
}

rm -rf ${ZIG_VERSION}

mv ${ZIG_EXTRACTED} /usr/local/zig || {
  echo "Move failed"
  exit 1
}

echo 'export PATH="/usr/local/zig:$PATH"' >>~/.bashrc

source ~/.bashrc

zig version
