let s:AwkScript = expand('<sfile>:h:h')."/bin/awk_stuff.sh"
function! s:FipVimRun()
    call fzf#run({
                \  'source': 'grep -rni . --exclude=tags --exclude-dir={.svn,.git,storage,vendor,.idea} .',
                \  'options': "--preview \"echo {} |".s:AwkScript." \" --color light --delimiter : --nth 3..",
                \  'sink': function('s:FipVimOpenWithPath') })
endfunction

function! s:FipVimOpenWithPath(path)
    let s = split(a:path, ":")
    execute 'e '.s[0]
    execute ''.s[1]
endfunction 

command! FIP call s:FipVimRun()
