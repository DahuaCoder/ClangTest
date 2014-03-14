#!/bin/bash -u


if [ $# -eq 0 ] ; then
    echo "No compiler specified"
    exit 1
fi

echo $1

if [ "$1" == "gcc" ] ; then
    export CC=/usr/bin/gcc
    export CXX=/usr/bin/g++
elif [ "$1" == "clang" ] ; then
    export CC=/usr/bin/clang
    export CXX=/usr/bin/clang++
else
    echo "Compiler unknown"
    exit 1
fi

rm -rf build
mkdir -p build
cd build
cmake ..

