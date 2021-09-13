syntax enable
filetype indent on

set number
set smartcase
set smarttab
set smartindent
set autoindent
set ruler
set cindent
set tabstop=4
set expandtab
set shiftwidth=4
set nocompatible
set cursorline
set t_Co=256
hi CursorLine term=underline ctermbg=234 guibg=#1c1c1c
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim' "required;
Plugin 'tpope/vim-fugitive' "required
Plugin 'nanotech/jellybeans.vim'
Plugin 'blueyed/vim-diminactive'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'wfxr/minimap.vim'
Plugin 'keith/swift.vim'
Plugin 'edkolev/tmuxline.vim'

call vundle#end()

filetype plugin indent on " Put your non-Plugin stuff after this line
colorscheme jellybeans
map <C-n> :NERDTreeToggle<cr>
map <C-m> :MinimapToggle<cr>
map <C-g> :TagbarToggle<cr>
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ endif

let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline_theme='hybrid'
let g:airline#extensions#tmuxline#enabled = 1
let g:tmuxline_preset = 'tmux'
set laststatus=2
let mapleader = ","
nnoremap <leader>q :bp<CR>
nnoremap <leader>w :bn<CR>

let g:minimap_width = 25
