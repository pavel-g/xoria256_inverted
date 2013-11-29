" Vim color file
"
" Name:       xoria256_inverted.vim
" Original Maintainer:	Dmitriy Y. Zotikov (xio) <xio@ungrund.org>
" Maintainer: Gnedov Pavel <pavel@gnedov.info>
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
  echomsg "err: please use GUI or a 256-color terminal (so that t_Co=256 could be set)"
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
hi Normal       ctermfg=236 guifg=#2f2f2f ctermbg=253 guibg=#dadada cterm=none gui=none
hi Cursor                                 ctermbg=214 guibg=#ffaf00
hi CursorColumn                           ctermbg=250 guibg=#bbbbbb
hi CursorLine                             ctermbg=251 guibg=#c5c5c5 cterm=none gui=none
hi Error        ctermfg=15  guifg=#ffffff ctermbg=88   guibg=#800000
hi ErrorMsg     ctermfg=15  guifg=#ffffff ctermbg=88   guibg=#800000
hi FoldColumn   ctermfg=244 guifg=#7f7f7f ctermbg=bg  guibg=bg     
hi Folded       ctermfg=244 guifg=#7f7f7f ctermbg=bg  guibg=bg
hi IncSearch    ctermfg=0   guifg=#000000 ctermbg=223 guibg=#ffdfaf cterm=none gui=none
hi LineNr       ctermfg=250 guifg=#bcbcbc ctermbg=254 guibg=#e4e4e4
hi MatchParen   ctermfg=234 guifg=#202020 ctermbg=136  guibg=#a07820 cterm=bold gui=bold
" TODO
" hi MoreMsg
hi NonText      ctermfg=241 guifg=#616161 ctermbg=254 guibg=#e4e4e4 cterm=bold gui=bold
hi Pmenu        ctermfg=15   guifg=#ffffff ctermbg=238 guibg=#434343
hi PmenuSel     ctermfg=233 guifg=#111111 ctermbg=245 guibg=#898989
hi PmenuSbar                              ctermbg=236 guibg=#2f2f2f
hi PmenuThumb   ctermfg=245 guifg=#898989
hi Search       ctermfg=0   guifg=#000000 ctermbg=149 guibg=#afdf5f
hi SignColumn   ctermfg=240 guifg=#575757
hi SpecialKey   ctermfg=127  guifg=#a020a0
hi SpellBad     ctermfg=160 guifg=fg      ctermbg=bg                cterm=underline               guisp=#df0000
hi SpellCap     ctermfg=233 guifg=#202000 ctermbg=bg  guibg=bg      cterm=underline gui=underline
hi SpellRare    ctermfg=168 guifg=#df5f87 ctermbg=bg  guibg=bg      cterm=underline gui=underline
hi SpellLocal   ctermfg=98  guifg=#875fdf ctermbg=bg  guibg=bg      cterm=underline gui=underline
hi StatusLine   ctermfg=0  guifg=#000000 ctermbg=249 guibg=#b1b1b1 cterm=bold gui=bold
hi StatusLineNC ctermfg=239 guifg=#4d4d4d ctermbg=251 guibg=#c5c5c5 cterm=none gui=none
hi TabLine      ctermfg=fg  guifg=fg      ctermbg=246 guibg=#999999 cterm=none gui=none
hi TabLineFill  ctermfg=fg  guifg=fg      ctermbg=251 guibg=#c5c5c5 cterm=none gui=none
" FIXME
hi Title        ctermfg=233 guifg=#002000
hi Todo         ctermfg=0   guifg=#000000 ctermbg=184 guibg=#dfdf00
hi Underlined   ctermfg=39  guifg=#00afff                           cterm=underline gui=underline
hi VertSplit    ctermfg=251 guifg=#c5c5c5 ctermbg=251 guibg=#c5c5c5 cterm=none gui=none
" hi VIsualNOS    ctermfg=24  guifg=#005f87 ctermbg=153 guibg=#afdfff cterm=none gui=none
" hi Visual       ctermfg=24  guifg=#005f87 ctermbg=153 guibg=#afdfff
"hi Visual       ctermfg=255 guifg=#111111 ctermbg=96  guibg=#875f87
hi Visual       ctermfg=255 guifg=#111111 ctermbg=24  guibg=#005f87
hi VisualNOS    ctermfg=255 guifg=#111111 ctermbg=60  guibg=#5f5f87
hi WildMenu     ctermfg=0   guifg=#000000 ctermbg=150 guibg=#afdf87 cterm=bold gui=bold

"" Syntax highlighting {{{2
"hi Comment      ctermfg=244 guifg=#7f7f7f
"hi Constant     ctermfg=229 guifg=#ffffaf
"hi Identifier   ctermfg=182 guifg=#dfafdf                           cterm=none
"hi Ignore       ctermfg=238 guifg=#444444
"hi Number       ctermfg=180 guifg=#dfaf87
"hi PreProc      ctermfg=150 guifg=#afdf87
"hi Special      ctermfg=174 guifg=#df8787
"hi Statement    ctermfg=110 guifg=#87afdf                           cterm=none gui=none
"hi Type         ctermfg=146 guifg=#afafdf                           cterm=none gui=none

hi Comment      ctermfg=246 guifg=#949494
hi Constant     ctermfg=131 guifg=#af5f5f
hi Identifier   ctermfg=98  guifg=#875fdf                           cterm=none
hi Ignore       ctermfg=247 guifg=#9f9f9f
hi Number       ctermfg=95  guifg=#8f4f47
hi PreProc      ctermfg=65  guifg=#5f875f                           cterm=bold gui=bold
hi Special      ctermfg=132 guifg=#af5f87
hi Statement    ctermfg=68  guifg=#5f87df                           cterm=bold gui=bold
hi Type         ctermfg=60  guifg=#5f5f87                           cterm=none gui=none

"" Special {{{2
""" .diff {{{3
hi diffAdded    ctermfg=150 guifg=#afdf87
hi diffRemoved  ctermfg=174 guifg=#df8787
""" vimdiff {{{3
hi diffAdd      ctermfg=0  guifg=#000000      ctermbg=151 guibg=#afdfaf
"hi diffDelete   ctermfg=bg  guifg=bg      ctermbg=186 guibg=#dfdf87 cterm=none gui=none
hi diffDelete   ctermfg=0  guifg=#000000      ctermbg=246 guibg=#949494 cterm=none gui=none
hi diffChange   ctermfg=0  guifg=#000000      ctermbg=181 guibg=#dfafaf
hi diffText     ctermfg=0  guifg=#000000      ctermbg=174 guibg=#df8787 cterm=none gui=none
""" HTML {{{3
" hi htmlTag      ctermfg=146  guifg=#505020
" hi htmlEndTag   ctermfg=146  guifg=#505020
hi htmlTag      ctermfg=243
hi htmlEndTag   ctermfg=243
hi htmlArg	ctermfg=28  guifg=#008700
hi htmlValue	ctermfg=24  guifg=#005f87
hi htmlTitle	ctermfg=233  ctermbg=146
" hi htmlArg	ctermfg=146
" hi htmlTagName	ctermfg=146
" hi htmlString	ctermfg=187
""" django {{{3
hi djangoVarBlock ctermfg=94
hi djangoTagBlock ctermfg=65
hi djangoStatement ctermfg=60
hi djangoFilter ctermfg=132
""" python {{{3
hi pythonExceptions ctermfg=131
""" NERDTree {{{3
hi Directory      ctermfg=69  guifg=#5f87ff
hi treeCWD        ctermfg=95  guifg=#875f5f
hi treeClosable   ctermfg=131 guifg=#af5f5f
hi treeOpenable   ctermfg=77  guifg=#5fdf5f
hi treePart       ctermfg=238 guifg=#444444
hi treeDirSlash   ctermfg=238 guifg=#444444
hi treeLink       ctermfg=139 guifg=#af87af

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

hi SignColumn term=standout ctermfg=236 guifg=#303030 ctermbg=bg guibg=bg
