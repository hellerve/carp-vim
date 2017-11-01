" Vim syntax file
" Language:     Carp
" Maintainer:   Veit Heller <veit@veitheller.de>
" URL:          http://github.com/carp-lang/carp-vim.git
" Description:  Contains all of the keywords in #lang carp

if exists("b:current_syntax")
  finish
endif

syn case ignore

syn match carpError ,[]})],

if version < 600
  set iskeyword=33,35-39,42-58,60-90,94,95,97-122,124,126,_
else
  setlocal iskeyword=33,35-39,42-58,60-90,94,95,97-122,124,126,_
endif


syn match carpSymbol    ,\k+,  contained
syn match carpTodo /\v<(FIXME|NOTE|TODO|OPTIMIZE)/ containedin=carpComment,carpString

syn cluster carpNormal  contains=carpSyntax,carpFunc,carpDelimiter
syn cluster carpQuotedStuff  contains=carpSymbol,carpAtom
syn cluster carpQuotedOrNormal  contains=carpDelimiter

syn region carpQuotedStruc start="("rs=s+1 end=")"re=e-1     contains=@carpQuotedStuff,@carpQuotedOrNormal contained
syn region carpQuotedStruc start="\["rs=s+1 end="\]"re=e-1   contains=@carpQuotedStuff,@carpQuotedOrNormal contained

syn cluster carpQuotedStuff add=carpQuotedStruc

syn region carpStruc matchgroup=Delimiter start="("rs=s+1 matchgroup=Delimiter end=")"re=e-1 contains=@carpNormal
syn region carpStruc matchgroup=Delimiter start="\["rs=s+1 matchgroup=Delimiter end="\]"re=e-1 contains=@carpNormal

syn region carpString start=/\%(\\\)\@<!"/ skip=/\\[\\"]/ end=/"/

syn cluster carpNormal          add=carpError,carpStruc,carpString
syn cluster carpQuotedOrNormal  add=carpString

syn match carpNumber    "\<[-+]\?\(\d\+\|\d\+#*\.\|\d*\.\d\+\)#*\(/\d\+#*\)\?\>" contains=carpContainedNumberError
syn match carpNumber    "\<[-+]\?\d\+/\d\+\>" contains=carpContainedNumberError


syn keyword carpBoolean  true false

syn match carpChar    "\<\\.\w\@!"

syn cluster carpNormal  add=carpNumber,carpBoolean,carpChar
syn cluster carpQuotedOrNormal  add=carpNumber,carpBoolean

syn region carpQuoted matchgroup=Delimiter start="['`]" end=![ \t()\[\]";]!me=e-1 contains=@carpQuotedStuff,@carpQuotedOrNormal
syn region carpQuoted matchgroup=Delimiter start="['`](" matchgroup=Delimiter end=")" contains=@carpQuotedStuff,@carpQuotedOrNormal
syn region carpQuoted matchgroup=Delimiter start="['`]\?#(" matchgroup=Delimiter end=")" contains=@carpQuotedStuff,@carpQuotedOrNormal

syn region carpQuoted matchgroup=Delimiter start="#['`]"rs=s+2 end=![ \t()\[\]";]!re=e-1,me=e-1 contains=@carpQuotedStuff,@carpQuotedOrNormal
syn region carpQuoted matchgroup=Delimiter start="#['`]("rs=s+3 matchgroup=Delimiter end=")"re=e-1 contains=@carpQuotedStuff,@carpQuotedOrNormal

syn match carpComment /;.*$/ contains=@Spell

syn cluster carpNormal  add=carpQuoted,carpComment
syn cluster carpQuotedOrNormal  add=carpComment

syn sync match matchPlace grouphere NONE "^[^ \t]"

if version >= 508 || !exists("carp_syntax_init")
  if version < 508
    let carp_syntax_init = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink carpSyntax             Statement
  HiLink carpFunc               Function

  HiLink carpString             String
  HiLink carpChar               Character
  HiLink carpBoolean            Boolean

  HiLink carpNumber             Number
  HiLink carpNumberError        Error
  HiLink carpContainedNumberError Error

  HiLink carpQuoted             Structure
  HiLink carpQuotedStruc        Structure
  HiLink carpSymbol             Structure
  HiLink carpAtom               Structure

  HiLink carpDelimiter          Delimiter
  HiLink carpConstant           Constant

  HiLink carpTodo               Todo
  HiLink carpComment            Comment
  HiLink carpError              Error
  delcommand HiLink
endif

let b:current_syntax = "carp"
