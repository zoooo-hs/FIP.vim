# FIP.vim - Find In Path in VIM

This is project inspired by Jetbrain's 'Finder in Path' feature.

```vim
function! FipVimRun()
    call fzf#run({
                \  'source': 'grep -rni . --exclude=tags --exclude-dir={.svn,.git,storage,vendor,.idea} .',
                \  'options': "--preview \"echo {} | cut -d ':' -f 1| xargs less\" --color light --delimiter : --nth 3",
                \  'sink': function('FipVimOpenWithPath') })
endfunction

function! FipVimOpenWithPath(path)
    let s = split(a:path, ":")
    execute 'e '.s[0]
    execute ''.s[1]
endfunction 
``` 

## Sorry

There is a problem with the preview function.

## Usage

[![asciicast](https://asciinema.org/a/TevQfHtw9gMzzsJbpbTKPNh7s.png)](https://asciinema.org/a/TevQfHtw9gMzzsJbpbTKPNh7s)

## Requirements

Theses requirements are not accurate.
(Actually, these are my dev-env...)

* vim
* fzf.vim (https://github.com/junegunn/fzf.vim)

## Installation

Currently, only *MANUAL installation* is supported. (I'll improve it..)

### Install in Manually

Append the code in script file to .vimrc

```bash
$ git clone https://github.com/DogFooter/FIP.vim.git
$ cat FIP.vim/script.vim >> $HOME/.vimrc

# or

$ git clone https://github.com/DogFooter/FIP.vim.git
$ cd FIP.vim
$ ./install.sh
```
