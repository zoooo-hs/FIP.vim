# FIP.vim - Find In Path with FZF.vim

This is project inspired by Jetbrain's 'Finder in Path' feature.
Thanks to FZF.vim, I could create it.
(https://github.com/junegunn/fzf.vim)

## Usage

[![asciicast](https://asciinema.org/a/158327.png)](https://asciinema.org/a/158327)

YouTube Video (https://www.youtube.com/watch?v=tRww9qEV9Sw)

## Now Testing

New function which can filter extension and directories.
So now you can see only the files which has specific extension that you want. And also you can exclude some directories that you want to ignore.

```vim
FIF extension exclude_dir1 exclude_dir2 ...

"eg)"
FIF ts node_moudules lib packages
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
Plug 'zoooo-hs/FIP.vim'
```
Install plugin
```vim
:PlugInstall
```

## Reference 
I referred to juengunn (https://github.com/junegunn) a lot.  

## License

MIT
