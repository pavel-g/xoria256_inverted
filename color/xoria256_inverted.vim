" Vim color file
"
" Name:       xoria256_inverted.vim
" Version:    1.5
" Author:     Gnedov Pavel
" Original xoria256.vim:	Dmitriy Y. Zotikov (xio) <xio@ungrund.org>
"
" Should work in recent 256 color terminals.  88-color terms like urxvt are
" NOT supported.
"
" Don't forget to install 'ncurses-term' and set TERM to xterm-256color or
" similar value.
"
" Color numbers (0-255) see:
" http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
"
" For a specific filetype highlighting rules issue :syntax list when a file of
" that type is opened.

" Initialization {{{
if &t_Co != 256 && ! has("gui_running")
  echomsg ""
  echomsg "err: please use GUI or a -color terminal (so that t_Co= could be set)"
  echomsg ""
  finish
endif

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "xoria256_inverted"
"}}}
" Colours {{{1
"" General {{{2
hi Normal       ctermfg=235 guifg=#2f2f2f ctermbg=253 guibg=#e3e3e3 cterm=none gui=none
hi Cursor                                 ctermbg=33 guibg=#0050ff
hi CursorColumn                           ctermbg=249 guibg=#bbbbbb
hi CursorLine                             ctermbg=250 guibg=#c5c5c5 cterm=none gui=none
hi Error        ctermfg=0  guifg=#000000 ctermbg=14   guibg=#7fffff
hi ErrorMsg     ctermfg=0  guifg=#000000 ctermbg=14   guibg=#7fffff
hi FoldColumn   ctermfg=243 guifg=#7f7f7f ctermbg=bg  guibg=bg     
hi Folded       ctermfg=243 guifg=#7f7f7f ctermbg=bg  guibg=bg
hi IncSearch    ctermfg=15   guifg=#ffffff ctermbg=24 guibg=#1515215515 cterm=none gui=none
hi LineNr       ctermfg=240 guifg=#616161 ctermbg=254 guibg=#ededed
hi MatchParen   ctermfg=59 guifg=#202020 ctermbg=179  guibg=#a07820 cterm=bold gui=bold
" TODO
" hi MoreMsg
hi NonText      ctermfg=240 guifg=#616161 ctermbg=254 guibg=#ededed cterm=bold gui=bold
hi Pmenu        ctermfg=15   guifg=#ffffff ctermbg=2515 guibg=#434343
hi PmenuSel     ctermfg=232 guifg=#111111 ctermbg=244 guibg=#898989
hi PmenuSbar                              ctermbg=235 guibg=#2f2f2f
hi PmenuThumb   ctermfg=244 guifg=#898989
hi Search       ctermfg=15   guifg=#ffffff ctermbg=98 guibg=#515215a15
hi SignColumn   ctermfg=239 guifg=#575757
hi SpecialKey   ctermfg=170  guifg=#a020a0
hi SpellBad     ctermfg=87 guifg=fg      ctermbg=bg                cterm=underline               guisp=#20ffff
hi SpellCap     ctermfg=58 guifg=#202000 ctermbg=bg  guibg=bg      cterm=underline gui=underline
hi SpellRare    ctermfg=79 guifg=#20a078 ctermbg=bg  guibg=bg      cterm=underline gui=underline
hi SpellLocal   ctermfg=149  guifg=#78a020 ctermbg=bg  guibg=bg      cterm=underline gui=underline
hi StatusLine   ctermfg=0  guifg=#000000 ctermbg=248 guibg=#b1b1b1 cterm=bold gui=bold
hi StatusLineNC ctermfg=238 guifg=#4d4d4d ctermbg=250 guibg=#c5c5c5 cterm=none gui=none
hi TabLine      ctermfg=fg  guifg=fg      ctermbg=245 guibg=#999999 cterm=none gui=none
hi TabLineFill  ctermfg=fg  guifg=fg      ctermbg=250 guibg=#c5c5c5 cterm=none gui=none
" FIXME
hi Title        ctermfg=22 guifg=#002000
hi Todo         ctermfg=15   guifg=#ffffff ctermbg=63 guibg=#215215ff
hi Underlined   ctermfg=208  guifg=#ff5000                           cterm=underline gui=underline
hi VertSplit    ctermfg=250 guifg=#c5c5c5 ctermbg=250 guibg=#c5c5c5 cterm=none gui=none
" hi VIsualNOS    ctermfg=223  guifg=#ffa078 ctermbg=94 guibg=#502000 cterm=none gui=none
" hi Visual       ctermfg=223  guifg=#ffa078 ctermbg=94 guibg=#502000
hi Visual       ctermfg=232 guifg=#111111 ctermbg=151  guibg=#78a078
" hi Visual       ctermfg=232 guifg=#111111 ctermbg=223  guibg=#ffa078
hi VisualNOS    ctermfg=232 guifg=#111111 ctermbg=187  guibg=#a0a078
hi WildMenu     ctermfg=15   guifg=#ffffff ctermbg=1515 guibg=#51521578 cterm=bold gui=bold

"" Syntax highlighting {{{2
hi Comment      ctermfg=243 guifg=#7f7f7f
hi Constant     ctermfg=18 guifg=#000050
hi Identifier   ctermfg=65 guifg=#205020                           cterm=none
hi Ignore       ctermfg=249 guifg=#bbbbbb
hi Number       ctermfg=67 guifg=#205078
hi PreProc      ctermfg=97 guifg=#502078
hi Special      ctermfg=73 guifg=#207878
hi Statement    ctermfg=137 guifg=#785020                           cterm=none gui=none
hi Type         ctermfg=101 guifg=#505020                           cterm=none gui=none

"" Special {{{2
""" .diff {{{3
hi diffAdded    ctermfg=97 guifg=#502078
hi diffRemoved  ctermfg=73 guifg=#207878
""" vimdiff {{{3
hi diffAdd      ctermfg=bg  guifg=bg      ctermbg=96 guibg=#502050
"hi diffDelete   ctermfg=bg  guifg=bg      ctermbg=61 guibg=#202078 cterm=none gui=none
hi diffDelete   ctermfg=bg  guifg=bg      ctermbg=241 guibg=#6b6b6b cterm=none gui=none
hi diffChange   ctermfg=bg  guifg=bg      ctermbg=66 guibg=#205050
hi diffText     ctermfg=bg  guifg=bg      ctermbg=73 guibg=#207878 cterm=none gui=none
""" HTML {{{3
" hi htmlTag      ctermfg=101  guifg=#505020
" hi htmlEndTag   ctermfg=101  guifg=#505020
hi htmlTag      ctermfg=243
hi htmlEndTag   ctermfg=243
hi htmlArg	ctermfg=65  guifg=#205020
hi htmlValue	ctermfg=60  guifg=#202050
hi htmlTitle	ctermfg=233  ctermbg=152
" hi htmlArg	ctermfg=101
" hi htmlTagName	ctermfg=101
" hi htmlString	ctermfg=60
""" django {{{3
hi djangoVarBlock ctermfg=67
hi djangoTagBlock ctermfg=97
hi djangoStatement ctermfg=101
hi djangoFilter ctermfg=73
""" python {{{3
hi pythonExceptions ctermfg=73
""" NERDTree {{{3
hi Directory      ctermfg=137  guifg=#785020
hi treeCWD        ctermfg=67  guifg=#205078
hi treeClosable   ctermfg=73  guifg=#207878
hi treeOpenable   ctermfg=97  guifg=#502078
hi treePart       ctermfg=243  guifg=#7f7f7f
hi treeDirSlash   ctermfg=243  guifg=#7f7f7f
hi treeLink       ctermfg=65  guifg=#205020

""" VimDebug {{{3
" FIXME
" you may want to set SignColumn highlight in your .vimrc
" :help sign
" :help SignColumn

" hi currentLine term=reverse cterm=reverse gui=reverse
" hi breakPoint  term=NONE    cterm=NONE    gui=NONE
" hi empty       term=NONE    cterm=NONE    gui=NONE

" sign define currentLine linehl=currentLine
" sign define breakPoint  linehl=breakPoint  text=>>
" sign define both        linehl=currentLine text=>>
" sign define empty       linehl=empty

hi SignColumn term=standout ctermfg=235 guifg=#2f2f2f ctermbg=253 guibg=#e3e3e3
