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

command! FIP call s:FipVimRun()
command! FIPT call s:FipVimOpenWithPathNewTab()
