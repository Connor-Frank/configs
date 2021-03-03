"          _
"   _   __(_)___ ___  __________
"  | | / / / __ `__ \/ ___/ ___/
" _| |/ / / / / / / / /  / /__
"(_)___/_/_/ /_/ /_/_/   \___/

" plugin installs
source $HOME/.vim/plugin-config/master-install.vim
" plugin config
source $HOME/.vim/plugin-config/gitgutter.vim
source $HOME/.vim/plugin-config/autoformat.vim

command! PU PlugUpdate | PlugUpgrade
command! Vterm vert term

" keymaps
source $HOME/.vim/keymaps.vim

" colors
" for suckless terminal:
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set background=dark
set termguicolors
"let g:gruvbox_contrast_dark = 'soft'
colorscheme nord
"highlight Comment ctermfg=green  " useful with no theme

" utf-8
set encoding=utf-8
set fileencoding=utf-8
" line numbers
set number
" mouse
set mouse=a
set mousehide
set cursorline
" wrap line if too long
set wrap
" linebreaks (to not chop words) for pdf and txt and md
autocmd BufRead,BufNewFile *.pdf,*.txt,*.md setlocal linebreak
" spell checker for txt and md
autocmd BufRead,BufNewFile *.txt,*.md setlocal spell
autocmd BufRead,BufNewFile CMakeLists.txt setlocal nospell
" readonly for pdfs
autocmd BufRead,BufNewFile *.pdf setlocal readonly
set spellcapcheck=0
set spelllang=en
set spellfile=$HOME/sync/vim/spell/en.utf-8.add
" turn on syntax
syntax on
" update things every 100ms (helps git gutter)
set updatetime=100
set nobackup noswapfile
set history=100
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
set ai si
" searching options
set hlsearch
set ignorecase
set smartcase
" autoreload file
set autoread

" no bell
set noeb vb t_vb=

" new splits open down and to the right
set splitbelow
set splitright
" nicer vert split separator
set fillchars+=vert:\█

" space/tab indicator
set list listchars=tab:>·,trail:~,extends:>,precedes:<,space:·

" file explorer
let g:netrw_banner = 0
let g:netrw_winsize = 15

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

" switch between header and source files
source $HOME/.vim/a.vim

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'mode_map': {
        \ 'n' : 'VIM'
        \ },
      \ 'component_function': {
        \'gitbranch': 'gitbranch#name'
        \ }
      \ }

let g:lightline.active = {
      \ 'left': [ [ 'mode', 'paste' ],
      \           [ 'readonly', 'filename', 'modified', 'gitbranch' ] ],
      \ 'right': [ [ 'lineinfo' ],
      \            [ 'percent'  ],
      \            [ 'fileformat'] ]
      \ }

let g:lightline.tabline = {
      \ 'left': [ [ 'tabs' ] ],
      \ 'right': [ [ 'buffer' ] ]
      \ }

" stuff for lightline and statusline
set noshowmode showcmd
set ruler
set laststatus=2
set showtabline=2
set guioptions-=e

" open ranger when vim opens a directory
"let g:ranger_replace_netrw=1
