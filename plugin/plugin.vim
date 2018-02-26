" Vim syntastic plugin helper
" Language:     Carp
" Maintainer:   Veit Heller <veit@veitheller.de>

if exists("g:loaded_syntastic_carp_filetype")
  finish
endif
let g:loaded_syntastic_carp_filetype = 1
let s:save_cpo = &cpo
set cpo&vim

" This is to let Syntastic know about the Carp filetype.
" It enables tab completion for the 'SyntasticInfo' command.
" (This does not actually register the syntax checker.)
if exists('g:syntastic_extra_filetypes')
    call add(g:syntastic_extra_filetypes, 'carp')
else
    let g:syntastic_extra_filetypes = ['carp']
endif

let &cpo = s:save_cpo
unlet s:save_cpo
