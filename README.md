dotfiles
========
These are my dotfiles. There are many like them, but these are mine.

INSTALL
-------
Installation is easy
```shell
~$ git clone https://github.com/bobbyrussell/dotfiles.git
~$ cd dotfiles/
~/dotfiles$ chmod +x install.sh
~/dotfiles$ ./install.sh
```
Easy, right?

USAGE
-----
You can manage your files from the pwd of this repo. This should be
$HOME/dotfiles. Files are organized in directories --  just update the
appropriate rc file, and the corresponding dotfile will update in your $HOME
directory. Sync upstream dotfile changes with `git pull`, and sync plugins with
`git submodule init && git submodule update`.

LICENSE
-------
The MIT License (MIT)

Copyright (c)  2015 Bobby Russell

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
