# tempraylib
This repository is a simple template to use raylib in Linux and Windows. 

## Setup

Requirements:
- CMake Version >= 3.11
- ninja 
- gcc (using Linux)
- mingw32 (using Windows, specifically this version was used:[mingw32](https://sourceforge.net/projects/mingw-w64/files/Toolchains%20targetting%20Win32/Personal%20Builds/mingw-builds/7.3.0/threads-posix/dwarf/i686-7.3.0-release-posix-dwarf-rt_v5-rev0.7z/download))

## Usage
On Linux simply execute the build.sh script. 
```
./build.sh
```
for a Release build you can add the option Release:
```
./build.sh Release
```

On Windows compile the project like this:
```
cmake -G Ninja -DCMAKE_BUILD_TYPE=Debug -B build/Debug
ninja -C build/Debug
```
For a Release build like this:
```
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -B build/Release
ninja -C build/Release
```
