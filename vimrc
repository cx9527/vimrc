filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'taglist.vim'
Plugin 'winmanager'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

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
set laststatus=2

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

" global copy
vnoremap Y "*y

" left pane
nnoremap <F3> :WMToggle<CR>
set pastetoggle=<F10>

inoremap ( ()<ESC>i

" format code
nnoremap <leader>fm ggVG=
nnoremap <leader>cl :nohl<CR>


""""""""""""""""""""""""""""""""""""""""""""
" left pane
" NerdTree & TagList use WinManager
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let g:NERDTree_title='NERD Tree'
let g:winManagerWindowLayout='NERDTree|TagList'  
function! NERDTree_Start()  
    exec 'NERDTree'  
endfunction  
      
function! NERDTree_IsValid()  
    return 1  
endfunction 

""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '/Users/cx/.ycm_global_ycm_extra_conf'
let g:ycm_confirm_extra_conf = '0'


""""""""""""""""""""""""""""""""""""""""""""
" restore cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
