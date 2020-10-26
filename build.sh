#!/bin/bash

buildoption="Debug"

if [[ $1 == 'Release' ]]; then
    buildoption="Release"
fi

echo "Building to ${buildoption}"

echo "Generating Ninja Build files..."
cmake -DCMAKE_BUILD_TYPE=${buildoption} -G Ninja -B build/${buildoption}

echo "Compiling using Ninja..."
ninja -C build/${buildoption}
./
