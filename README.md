# Pure Swift Module Example
This is a project based on [this blog post](https://railsware.com/blog/creation-of-pure-swift-module/) that demonstrates how to create a module using only Swift. 

I found the example a bit out of date (even though it's from 8/11/21) and was having some difficulty getting it to work. With some experimentation and web searching, I was able to come up with a example that works for both macOS and Linux (tested on Swift-5.7-DEV on Fedora 36).

## Files
### `build-n-test.sh`
Run this to build the module/library as well as build and run its accompanying test program (`test.swift`).

This is the file to really look at. It has all the magic incantations that are needed to properly build and run circa Swift 5.6 and 5.7-DEV (on Linux).
### `ZLogger.swift`
A Swift file that contains both a class and a function that are available to other programs
### `test.swift`
Test program that imports the ZLogger framework.

