# FIP.vim - Find In Path with FZF.vim

This is project inspired by Jetbrain's 'Finder in Path' feature.
Thanks to FZF.vim, I could create it.
(https://github.com/junegunn/fzf.vim)

## Usage

[![asciicast](https://asciinema.org/a/158327.png)](https://asciinema.org/a/158327)

YouTube Video (https://www.youtube.com/watch?v=tRww9qEV9Sw)

## Features

### :FIP ...exclude_dirs

Find In Path but not in "...exclude_dirs"

#### Parameters
- ...exclude_dirs
    - optional 
    - directory path that you want to ignore

```bash
# ex)
:FIP node_modules build
```

### :FIPD from_dir

Find In Path from directory "from_dir"

#### Parameters
- from_dir
    - required
    - directory path where you want to do "FIND IN PATH" 

```bash
# ex)
:FIPD src
```

## Requirements

Theses requirements are not accurate.
(Actually, these are my dev-env...)

* vim
* fzf.vim (https://github.com/junegunn/fzf.vim)

## Installation

I usually use vim-plug (https://github.com/junegunn/vim-plug)

Add this Line to the .vimrc
```vim
Plug 'dogfooter/FIP.vim'
```
Install plugin
```vim
:PlugInstall
```

## Reference 
I referred to juengunn (https://github.com/junegunn) a lot.  

## License

MIT
