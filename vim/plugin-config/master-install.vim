call plug#begin('~/.vim/pack')

" themes
Plug 'doums/darcula'
Plug 'lifepillar/vim-gruvbox8'
Plug 'arcticicestudio/nord-vim'

" lightline
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'

" autocompletion of pairs
Plug 'jiangmiao/auto-pairs'
" auto commenter
Plug 'preservim/nerdcommenter'

" tagbar (on the right, shows methods)
Plug 'preservim/tagbar'

" install kite using vimplug
"Plug 'kiteco/vim-plugin' , { 'as': 'kite' }

" Add maktaba and codefmt to the runtimepath.
" (The latter must be installed before it can be used.)
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plug 'google/vim-glaive'

" ranger
Plug 'francoiscabrol/ranger.vim'

" pdf viewer
Plug 'makerj/vim-pdf'

" git gutter
Plug 'airblade/vim-gitgutter'

call plug#end()
