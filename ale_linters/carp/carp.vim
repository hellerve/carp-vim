" ALE linter for Carp
" Language:     Carp
" Maintainer:   Veit Heller <veit@veitheller.de>

call ale#linter#Define('carp', {
\   'name': 'carp',
\   'executable': 'carp',
\   'command': '%e --check %s',
\   'callback': 'ale_linters#carp#carp#Handle',
\})

function! ale_linters#carp#carp#Handle(buffer, lines) abort
    let l:pattern = '\v^([^:]+):(\d+):(\d+) (.+)$'
    let l:output = []

    for l:match in ale#util#GetMatches(a:lines, l:pattern)
        call add(l:output, {
        \   'filename': l:match[1],
        \   'lnum': l:match[2] + 0,
        \   'col': l:match[3] + 0,
        \   'text': l:match[4],
        \   'type': 'E',
        \})
    endfor

    return l:output
endfunction
