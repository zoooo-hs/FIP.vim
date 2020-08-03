let s:AwkScript = expand('<sfile>:h:h')."/bin/awk_stuff.sh"
function! s:FipVimRun()
    call fzf#run({
                \  'source': "grep -rni . --exclude=tags --exclude='*.swp' --exclude-dir={.svn,.git,storage,vendor,.idea} .",
                \  'options': "--preview \"echo {} |".s:AwkScript." \" --color light --delimiter : --nth 3..",
                \  'sink': function('s:FipVimOpenWithPath') })
endfunction

function! s:FipVimOpenWithPath(path)
    let s = split(a:path, ":")
    execute 'e '.s[0]
    execute ''.s[1]
endfunction 

function! s:FipVimOpenWithPathNewTab()
    execute 'tabnew'
    call s:FipVimRun()
endfunction 

function! s:FipVimRunFilter(extension, ...)

    "BETA. Testing"
    "a:extension: only extension which you want to find"
    "a:000 : directories that you want to exclude"
    "execute command -> FIF extension exclude_dir1 exclude_dir2"

    let excludes = ""
    for exclude in a:000
        let excludes.="-not -path '*/".exclude."/*' "
    endfor

    let source = "find ".excludes." -name '*.".a:extension."' -exec grep -inH . {} \\;"
    call fzf#run({
                \  'source': source,
                \  'options': "--preview \"echo {} |".s:AwkScript." \" --color light --delimiter : --nth 3..",
                \  'sink': function('s:FipVimOpenWithPath') })


endfunction 

command! FIP call s:FipVimRun()
" command! -nargs=* FIPE call s:FipVimRunExclude(<f-args>)
command! -nargs=* FIF call s:FipVimRunFilter(<f-args>)
command! FIPT call s:FipVimOpenWithPathNewTab()
