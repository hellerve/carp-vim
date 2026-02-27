" Vim indent file
" Language:     Carp
" Maintainer:   Veit Heller <veit@veitheller.de>
" URL:          http://github.com/hellerve/carp-vim.git

if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

setlocal lisp autoindent nosmartindent
setlocal shiftwidth=2 softtabstop=2 expandtab

setlocal lispwords=defn,defmacro,defdynamic,defndynamic
setlocal lispwords+=let,let-do,do,if,while,while-do,case
setlocal lispwords+=deftype,defmodule,definterface,fn
setlocal lispwords+=when,unless,forever-do,comment
setlocal lispwords+=defn-do,deftest,defproject
