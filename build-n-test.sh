#!/usr/bin/env bash

if [ "$(uname)" == "Darwin" ]; then
    echo Building on macOS
    xcrun swiftc -emit-library -emit-object ZLogger.swift -sdk $(xcrun --show-sdk-path --sdk macosx) -module-name ZLogger
    ar rcs libZLogger.a ZLogger.o
    xcrun swiftc -emit-module ZLogger.swift -sdk $(xcrun --show-sdk-path --sdk macosx) -module-name ZLogger
    echo Now running the test program...
    xcrun -sdk macosx swiftc -I. -L. -lZLogger ./test.swift -o test; ./test
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo Building on Linux
    swiftc -emit-library -emit-object ZLogger.swift -module-name ZLogger
    ar rcs libZLogger.a ZLogger.o
    swiftc -emit-module ZLogger.swift -module-name ZLogger
    echo Now running the test program...
    swiftc -I. -L. -lZLogger ./test.swift -o test; ./test
fi
