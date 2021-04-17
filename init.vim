" .config/nvim/init.vim
" https://www.linode.com/docs/guides/how-to-install-neovim-and-plugins-with-vim-plug/
" 
" Neovim plugin manager
" curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

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

autocmd FileType go setlocal autoindent noexpandtab tabstop=4 shiftwidth=4
autocmd FileType java setlocal tabstop=4 shiftwidth=4
autocmd FileType rust setlocal tabstop=4 shiftwidth=4

map ' :Rg<Space>
map ; :Files<CR>

command Rtree NERDTree
command RTree NERDTree

let g:rg_derive_root = 'true'
let g:rg_highlight = 'true'

set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//

call plug#begin()
Plug 'brooth/far.vim'
Plug 'preservim/nerdtree'
Plug 'rust-lang/rust.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'mustache/vim-mustache-handlebars'
call plug#end()
