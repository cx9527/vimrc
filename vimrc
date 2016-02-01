set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'

"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line


set autoindent
set smartindent

set nocompatible
set backspace=indent,eol,start


""""""""""""""""""""""""""""""""""""""""""""
" UI
colorscheme desert
set background=dark
set showcmd
set mouse=a
set cursorline
set nu
set wildmenu

""""""""""""""""""""""""""""""""""""""""""""
" searching
set incsearch
set hlsearch


""""""""""""""""""""""""""""""""""""""""""""
" color
syntax enable
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4


""""""""""""""""""""""""""""""""""""""""""""
" mapping
let mapleader=","
nnoremap <C-H> gg
nnoremap <C-E> G$
vnoremap Y "*y

nnoremap <F3> :NERDTreeToggle<CR>
