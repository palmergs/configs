syntax on
set number
set ruler
set noerrorbells

set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

set invlist

autocmd FileType go setlocal autoindent noexpandtab tabstop=4 shiftwidth=4
autocmd FileType rust setlocal tabstop=4 shiftwidth=4

map ; :Files<CR>
map ' :Rg

command Rtree NERDTree
command RTree NERDTree
command Rg rg

set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//


set background=dark
colorscheme jellybeans

call plug#begin()
Plug 'brooth/far.vim'
Plug 'preservim/nerdtree'
Plug 'rust-lang/rust.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'jremmen/vim-ripgrep'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'elixir-editors/vim-elixir'
Plug 'cespare/vim-toml', { 'branch': 'main' }
call plug#end()

