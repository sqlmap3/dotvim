" For pathogen.vim: auto load all plugins in .vim/bundle
execute pathogen#infect()

"open syntax highlight
syntax enable
syntax on
"indent based on filetype
filetype plugin indent on
filetype on
"rainbow
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {
\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {},
\		'systemverilog': {
\			'parentheses': ['start=#\(^\|\s\)begin# end=#\(^\|\s\)end#'],
\       },
\		'verilog': {
\			'parentheses': ['start=#\(^\|\s\)begin# end=#\(^\|\s\)end#'],
\       },
\		'tex': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\		},
\		'lisp': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\		},
\		'vim': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\		},
\		'html': {
\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\		},
\		'css': 0,
\	}
\}
""tagbar
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_autofocus = 1
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_type_systemverilog = {
        \ 'ctagstype'   : 'SystemVerilog',
        \ 'kinds'       : [
            \ 'b:blocks:1:1',
            \ 'c:constants:1:0',
            \ 'e:events:1:0',
            \ 'f:functions:1:1',
            \ 'm:modules:0:1',
            \ 'n:nets:1:0',
            \ 'p:ports:1:0',
            \ 'r:registers:1:0',
            \ 't:tasks:1:1',
            \ 'A:assertions:1:1',
            \ 'C:classes:0:1',
            \ 'V:covergroups:0:1',
            \ 'I:interfaces:0:1',
            \ 'M:modport:0:1',
            \ 'K:packages:0:1',
            \ 'P:programs:0:1',
            \ 'R:properties:0:1',
            \ 'T:typedefs:0:1'
    \ ],
        \ 'sro'         : '.',
        \ 'kind2scope'  : {
            \ 'm' : 'module',
            \ 'b' : 'block',
            \ 't' : 'task',
            \ 'f' : 'function',
            \ 'C' : 'class',
            \ 'V' : 'covergroup',
            \ 'I' : 'interface',
            \ 'K' : 'package',
            \ 'P' : 'program',
            \ 'R' : 'property'
        \ },
    \ }
""""""""""""""""""""""""<win_manager>""""""""""""""""""""""""""
let g:winManagerWindowLayout='FileExplorer'
nmap <F3> :WMToggle<cr>
"set cursorline
"vim self_cmd complete smartly
set wildmenu
set showcmd
"""""""""fold set""""""""""""""""
set foldmethod=syntax
set foldcolumn=2
highlight Folded guibg=grey guifg=blue
highlight FoldColumn guibg=black guifg=white

let g:SuperTabDefaultCompletionType = 'context'
set tags=tags;
let g:airline_theme='angr'
set tags=/mnt/mydata/apb-uart-uvm-env-main/tags
set autochdir
source $VIMRUNTIME/macros/matchit.vim

set nocompatible
set ru
set nu
set nobackup
set noswapfile

"""""""""""""""""""""<search setting>"""""""""""""""""""""""
"Override the 'ignorecase' option if the search pattern contains upper
"case characters.  Only used when the search pattern is typed and
"'ignorecase' option is on. 
set incsearch
set hls
"set ignorecase
set ignorecase smartcase
"set infercase

""""""""""""""""""""<color scheme setting>""""""""""""""""""
""vim color scheme setting 
if has("gui_running")
    set background=dark
    colorscheme desert    
    "colorscheme solarized
else
    colorscheme molokai
endif

"""""""""""""""""""""""""set match pairs"""""""""""""""""""""""
set showmatch
"How many tenths of a second to blink
set matchtime=5

"set guicursor=n:block-blinkoff0
"""""""""""""<set for chinese support>""""""""""""""""""""""""""
":language ja_JP.eucJP
":let &termencoding = &encoding
":set termencoding=euc-jp
set fileencodings=utf-8,gbk,big5,euc-jp,gb2312

let g:airline_powerline_fonts = 1
let b:match_ignorecase=0
let b:match_words=
  \ '\<begin\>:\<end\>,' .
  \ '\<if\>:\<else\>,' .
  \ '\<module\>:\<endmodule\>,' .
  \ '\<class\>:\<endclass\>,' .
  \ '\<program\>:\<endprogram\>,' .
  \ '\<clocking\>:\<endclocking\>,' .
  \ '\<property\>:\<endproperty\>,' .
  \ '\<sequence\>:\<endsequence\>,' .
  \ '\<package\>:\<endpackage\>,' .
  \ '\<covergroup\>:\<endgroup\>,' .
  \ '\<primitive\>:\<endprimitive\>,' .
  \ '\<specify\>:\<endspecify\>,' .
  \ '\<generate\>:\<endgenerate\>,' .
  \ '\<interface\>:\<endinterface\>,' .
  \ '\<function\>:\<endfunction\>,' .
  \ '\<task\>:\<endtask\>,' .
  \ '\<case\>\|\<casex\>\|\<casez\>:\<endcase\>,' .
  \ '\<fork\>:\<join\>\|\<join_any\>\|\<join_none\>,' .
  \ '`ifdef\>:`else\>:`endif\>,'


let mapleader="\<Space>"
nnoremap <leader>i :VerilogFollowInstance<CR>
nnoremap <leader>I :VerilogFollowPort<CR>
nnoremap <leader>u :VerilogGotoInstanceStart<CR>


let g:winManagerWindowLayout='FileExplorer'
nmap <F3> :WMToggle<cr>

set cscopetag


" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=200		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
"set incsearch		" do incremental searching

set nowrap

" For indent
set shiftwidth=4
set expandtab
set smarttab

" Don't use Ex mode, use Q for formatting
" map Q gq
noremap Q @q

"map <F6> :syn off<CR>
"map <F7> :if exists("syntax_on") <Bar>
"	\   source ~chungwu/.vim/syntax/fusb3.vim<CR> <Bar>
"	\ else <Bar>
"	\   syntax off <Bar>
"	\ endif <CR>
map gy gT
map gb gT
map <C-j> <C-w>j
map <C-k> <C-w>k

if &t_Co > 2 || has("gui_running")
  " syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

  " autocmd FileType make setlocal noexpandtab
  " autocmd FileType perl setlocal shiftwidth=2

  "Ack search results show a mix of relative and absolute paths, making them hard to read 
  "autocmd BufAdd * execute "cd" fnameescape(getcwd())

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Taglist setting
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Exit_OnlyWindow = 1
nnoremap <silent> <F8> :TlistToggle<CR>

" Quickfix Window
function! GetBufferList()
  redir =>buflist
  silent! ls
  redir END
  return buflist
endfunction

function! ToggleList(bufname, pfx)
  let buflist = GetBufferList()
  for bufnum in map(filter(split(buflist, '\n'), 'v:val =~ "'.a:bufname.'"'), 'str2nr(matchstr(v:val, "\\d\\+"))')
    if bufwinnr(bufnum) != -1
      exec(a:pfx.'close')
      return
    endif
  endfor
  if a:pfx == 'l' && len(getloclist(0)) == 0
      echohl ErrorMsg
      echo "Location List is Empty."
      return
  endif
 
  let winnr = winnr()
  exec(a:pfx.'open')
  if winnr() != winnr
    wincmd p
  endif
endfunction
nmap <silent> <leader>l :call ToggleList("Location List", 'l')<CR>
nmap <silent> <F7> :call ToggleList("Quickfix List", 'c')<CR>
"nnoremap <C-N> :cn<CR>
"nnoremap <C-P> :cp<CR>

" FuzzyFinder setting
"let g:fuf_modesDisable = []
"let g:fuf_mrufile_maxItem = 400
"let g:fuf_mrucmd_maxItem = 400
"nnoremap <silent> <F3>     :FufBuffer<CR>
"nnoremap <silent> <S-F3>   :FufFile<CR>

" EasyGrep setting
let g:EasyGrepMode = 2
let g:EasyGrepRecursive = 1
let g:EasyGrepJumpToMatch = 0
" If external tool 'ag' or 'ack' is used
if executable('ag')
  set grepprg=ag\ --vimgrep
  set grepformat=%f:%l:%c:%m,%f:%l:%m
  let g:EasyGrepCommand = 1
  "let g:EasyGrepEnableLogging = 1
elseif executable('ack')
  set grepprg=ack\ --nopager\ --nocolor\ --nogroup\ --column
  set grepformat=%f:%l:%c:%m,%f:%l:%m
  let g:EasyGrepCommand = 1
  "let g:EasyGrepEnableLogging = 1
endif

" bufexplorer setting
let g:bufExplorerSplitBelow = 1

" mark setting
"nmap <Leader>M <Plug>MarkToggle
"nmap <Leader>N <Plug>MarkAllClear

" Supertab setting
let g:SuperTabDefaultCompletionType = "context"

" SnipMate setting
"let g:snippets_dir = "~/.vim/snippets, ~/.vim/bundle/snipmate.vim/snippets"

" YouCompleteMe setting
set encoding=utf-8

" ack.vim setting
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
  nnoremap <silent> <Leader>ff :silent execute 'Ack! --sv '.expand("<cword>")<CR>
endif


" For save fold information
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview

command! -bang -nargs=+ Gr let @g=""|execute 'g/<args>/y G'|new|setlocal bt=nofile|put! g|redraw
nnoremap <silent> <Leader>ng :redir @g<CR>:silent g//<CR>:redir END<CR>:new<CR>:setlocal bt=nofile<CR>:put! g<CR>:redraw!<CR>
nnoremap <silent> <Leader>nn :redir @g<CR>:silent execute 'g/'.expand("<cword>").'/'<CR>:redir END<CR>:new<CR>:setlocal bt=nofile<CR>:put! g<CR>:redraw!<CR>

" Set Foldexpr
function! MyFoldLevel(lnum)
  let m_fold = (getline(a:lnum)=~'^\x\+') ? 1 : 0
  return m_fold
endfunction
function! ToggleFoldmethod()
  if &foldmethod!='manual'
    set foldmethod=manual
    normal zE
  else
    set foldmethod=expr
    set foldexpr=MyFoldLevel(v:lnum)
  endif
endfunction
"command! -bang -nargs=0 Fe set foldmethod=expr|set foldexpr=MyFoldLevel(v:lnum)
nmap <silent> <F9> :call ToggleFoldmethod()<CR>

" Set window size
function! ToggleWinWidth()
  if &columns=='100'
    set columns=160
  else
    set columns=100
  endif
endfunction
function! ToggleWinHeight()
  if &lines!='40'
    set lines=40
  endif
endfunction
nmap <silent> <F12> :call ToggleWinWidth()<CR>
nmap <silent> <S-F12> :call ToggleWinHeight()<CR>

" Set CursorLine CoursorColumn
function! ToggleCursorLine()
  if &cursorline||&cursorcolumn
    set nocursorline
    set nocursorcolumn
  else
    set cursorline
    set cursorcolumn
  endif
endfunction
nmap <silent> <F11> :call ToggleCursorLine()<CR>
nnoremap <silent> <Leader>sv :setfiletype svtb_log<CR>

" Set window font
let s:pattern = '^\(.* \)\([1-9][0-9]*\)$'
let s:minfontsize = 10
let s:maxfontsize = 16
function! AdjustFontSize(amount)
  if has("gui_running") && has("gui_gtk2")
    let fontname = substitute(&guifont, s:pattern, '\1', '')
    let cursize = substitute(&guifont, s:pattern, '\2', '')
    let newsize = cursize + a:amount
    if (newsize >= s:minfontsize) && (newsize <= s:maxfontsize)
      let newfont = fontname . newsize
      let &guifont = newfont
    endif
  else
    echoerr "You need to run the GTK2 version of Vim to use this function."
  endif
endfunction

let s:FontSizeToggled = 0
function! ToggleWinFont()
  if has("gui_running") && has("gui_gtk2")
      if s:FontSizeToggled == 0
          call AdjustFontSize(2)
          let s:FontSizeToggled = 1
      else
          call AdjustFontSize(-2)
          let s:FontSizeToggled = 0
      endif
  endif
endfunction
nmap <silent> <F10> :call ToggleWinFont()<CR>:redraw!<CR>

let s:ColorSchemeToggled = 0
function! ToggleColorScheme()
  if has("gui_running") && has("gui_gtk2")
      if s:ColorSchemeToggled == 0
          "colorscheme nightfox
           colorscheme molokai

          let s:ColorSchemeToggled = 1
      elseif s:ColorSchemeToggled == 1
          colorscheme molokai
             "colorscheme gruvbox
          let s:ColorSchemeToggled = 2
      else
          colorscheme molokai
             "colorscheme gruvbox
          let s:ColorSchemeToggled = 0
      endif
  endif
endfunction
nmap <silent> <F6> :call ToggleColorScheme()<CR>:redraw!<CR>


""""""""""""""""""""""<gui_font_setting>""""""""""""""""""
set linespace=1
if has("gui_running")
        if has("gui_gtk2")
                ":set guifont=Bitstream\ Vera\ Sans\ Mono\ 11
                ":set guifont=Courier\ 16,mendium\ 16
                ":set guifont=Courier\ 12,fixed\ 12,\ 7x13
                :set guifont=Monospace\ 13
        elseif has("x11")
                "also for GTK 1
                :set guifont=-Courier_10_Pitch-Medium-R-Normal--14-110-70-70-C-75-ISO8859-1
        elseif has("gui_win32")
                :set guifont=Luxi_mono:h12:cANSI
        endif
endif

"""""""""""""""""""""status columbar""""""""""""""""""""""""
set laststatus =2
"highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLine guifg=SlateBlue guibg=Gray


""""""""""""""""""""indentLine—char""""""""""""""""""""""""""
let g:indentLine_char='¦'
"""""""""""""""""""""""gui options"""""""""""""""""""""""""""
set wrap
set guioptions+=b
