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

## Future Work

Improving Preview (show right place, line number)

## Usage

[![asciicast](https://asciinema.org/a/158262.png)](https://asciinema.org/a/158262)

## Requirements

Theses requirements are not accurate.
(Actually, these are my dev-env...)

* vim
* fzf.vim (https://github.com/junegunn/fzf.vim)

## Installation

Not supported
