filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'taglist.vim'
Plugin 'winmanager'
" Plugin 'Valloric/YouCompleteMe'
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

set fdm=syntax


""""""""""""""""""""""""""""""""""""""""""""
" UI
""""""""""""""""""""""""""""""""""""""""""""
colorscheme luna-term
set background=dark
set showcmd
set mouse=a
set cursorline
set nu
set wildmenu
set laststatus=2

""""""""""""""""""""""""""""""""""""""""""""
" searching
""""""""""""""""""""""""""""""""""""""""""""
set incsearch
set hlsearch


""""""""""""""""""""""""""""""""""""""""""""
" color
""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4


""""""""""""""""""""""""""""""""""""""""""""
" mapping
""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","
nnoremap <C-H> gg
nnoremap <C-E> G$

" global copy
vnoremap <C-y> "+y

" left pane
nnoremap <F3> :WMToggle<CR>
set pastetoggle=<F10>

inoremap ( ()<ESC>i

" format code
nnoremap <leader>fm ggVG=
nnoremap <leader>cl :nohl<CR>

nnoremap <C-o> zA

nnoremap <C-h> 10h
nnoremap <C-j> 10j
nnoremap <C-k> 10k
nnoremap <C-l> 10l

""""""""""""""""""""""""""""""""""""""""""""
" left pane
" NerdTree & TagList use WinManager
""""""""""""""""""""""""""""""""""""""""""""
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
""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf = '/Users/cx/.ycm_global_ycm_extra_conf'
let g:ycm_confirm_extra_conf = '0'


""""""""""""""""""""""""""""""""""""""""""""
" restore cursor position
""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" airline theme
let g:airline_theme='base16_google'



""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
  set csprg=/usr/local/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  set csverb
endif


" Find C symblic
cmap ,s cs find s 
" Find defination
cmap ,g cs find g 
" Find functions that are called by this function
cmap ,d cs find d 
" Find functions that are call this function
cmap ,c cs find c 
" Find this string
cmap ,t cs find t 
" Find this egrep
cmap ,e cs find e 
" Find this file
cmap ,l cs find f 
" Find files that are include this file
cmap ,n cs find i 


nmap <leader>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <leader>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <leader>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <leader>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <leader>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <leader>d :cs find d <C-R>=expand("<cword>")<CR><CR>
