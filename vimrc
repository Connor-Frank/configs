"
"   _   __(_)___ ___  __________
"  | | / / / __ `__ \/ ___/ ___/
" _| |/ / / / / / / / /  / /__  
"(_)___/_/_/ /_/ /_/_/   \___/  
"

" utf-8
set encoding=utf-8
set fileencoding=utf-8
" line numbers
set number
" wrap line if too long
set wrap
" linebreaks (to not chop words) for pdf and txt and md
autocmd BufRead,BufNewFile *.pdf,*.txt,*.md set linebreak
" spell checker for txt and md
autocmd BufRead,BufNewFile *.txt,*.md setlocal spell
autocmd BufRead,BufNewFile CMakeLists.txt setlocal nospell
set spellcapcheck=0
set spelllang=en
set spellfile=$HOME/sync/vim/spell/en.utf-8.add
" turn on syntax
syntax on
" update things every 100ms (helps git gutter)
set updatetime=100
set noswapfile
" more powerful backspacing
set backspace=indent,eol,start
" tabs
set tabstop=2
set shiftwidth=2
set expandtab
" general options
set undolevels=1000
set hidden
set clipboard=unnamed
set background=dark
" autoindenting and smartindenting
set ai
set si
" highlight search
set hlsearch
" line number, character, and percentage on bottom right
set ruler

" no bell
set noeb vb t_vb=

" new splits open down and to the right
set splitbelow
set splitright
" nicer vert split separator
set fillchars+=vert:\        

" colors
set background=dark
colorscheme peachpuff
highlight Comment ctermfg=green

" cursor in insert mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
elseif $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
else
    let &t_SI = "\e[5 q"
    let &t_EI = "\e[2 q"
endif

set timeout ttimeout         " separate mapping and keycode timeouts
set timeoutlen=500           " mapping timeout 500ms  (adjust for preference)
set ttimeoutlen=20           " keycode timeout 20ms

function TerminalManager()
  setlocal norelativenumber
  setlocal nonumber
  silent! normal i
endfunction

augroup terminalmanagement
  autocmd TerminalOpen call TerminalManager()
  autocmd BufWinEnter,FocusGained * if &buftype == 'terminal' | call TerminalManager() | endif 
augroup END

" keymaps
source $HOME/.vim/keymaps.vim

" switch between header and source files
source $HOME/.vim/a.vim

" plugin installs
source $HOME/.vim/plugin-config/master-install.vim
" plugin config
source $HOME/.vim/plugin-config/gitgutter.vim
source $HOME/.vim/plugin-config/autoformat.vim

" open ranger when vim opens a directory
"let g:ranger_replace_netrw=1
