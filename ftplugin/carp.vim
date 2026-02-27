" Vim filetype plugin
" Language:     Carp
" Maintainer:   Veit Heller <veit@veitheller.de>
" URL:          http://github.com/hellerve/carp-vim.git

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

setlocal commentstring=;\ %s
setlocal comments=:;
setlocal define=^\\s*(def\\k*
setlocal formatoptions-=t
