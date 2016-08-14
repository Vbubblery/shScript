#! /bin/bash

tar -zxvf UnixBench5.1.3.tgz
cd UnixBench
make
./Run
rm -rf ~/shScript/UnixBench

wget -qO- bench.sh | bash
rm -rf bench.sh