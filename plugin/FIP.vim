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

command! FIP call FipVimRun()