" Vim syntastic plugin
" Language:     Carp
" Maintainer:   Veit Heller <veit@veitheller.de>
"
" See for details on how to add an external Syntastic checker:
" https://github.com/scrooloose/syntastic/wiki/Syntax-Checker-Guide#external

if exists("g:loaded_syntastic_carp_carp_checker")
    finish
endif
let g:loaded_syntastic_carp_carp_checker = 1

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_carp_carp_IsAvailable() dict
    return executable(self.getExec())
endfunction

function! SyntaxCheckers_carp_carp_GetLocList() dict
    let makeprg = self.makeprgBuild({'args': '--check'})

    let errorformat  = '%f:%l:%c %m,'

    return SyntasticMake({
        \ 'makeprg': makeprg,
        \ 'errorformat': errorformat })
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'carp',
    \ 'name': 'carp'})

let &cpo = s:save_cpo
unlet s:save_cpo
