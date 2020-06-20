# swifty-tcod

A Swift wrapper around libtcod.

## Installation

Install the tcod library on your computer. 

### Homebrew

I would recommend using [Homebrew](https://brew.sh) and simply running `brew install tcod`.
Unfortunately this seems to only install the link library but not the include files.
I'll update this if I find a way to make it work.

### GitHub

Download [libtcod 1.15.1 for MacOS](https://github.com/libtcod/libtcod/releases/tag/1.15.1) from their GitHub releases page.
Extract it to a directory named `libtcod`.

```
cd libtcod
cp libtcod.dylib /usr/local/lib
cp -r include/* /usr/local/include/libtcod
```

## License

This package is released under the MIT License, which is copied below.

Copyright (c) 2020 Thomas H Aylesworth

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
