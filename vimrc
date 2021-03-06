set nocompatible              " be iMproved, required
filetype off                  " required

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/taglist.vim'
Plug 'vim-scripts/winmanager'
Plug 'scrooloose/nerdcommenter'
"Plugin 'Valloric/YouCompleteMe'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'kien/ctrlp.vim'
Plug 'Yggdroot/LeaderF'
Plug 'vim-scripts/a.vim'
Plug 'morhetz/gruvbox'

call plug#end()


set autoindent
set smartindent

set nocompatible
set backspace=indent,eol,start

"set fdm=syntax


""""""""""""""""""""""""""""""""""""""""""""
" UI
""""""""""""""""""""""""""""""""""""""""""""
" colorscheme luna-term
colorscheme gruvbox
set t_Co=256
set background=dark
set showcmd
set mouse=a
set cursorline
set nu
set wildmenu
set laststatus=2

syntax enable
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set scrolloff=8

""""""""""""""""""""""""""""""""""""""""""""
" searching
""""""""""""""""""""""""""""""""""""""""""""
set incsearch
set hlsearch

""""""""""""""""""""""""""""""""""""""""""""
" mapping
""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","
nnoremap <C-H> gg
nnoremap <C-E> G$

" global copy
vnoremap <C-y> "+y

" left pane
nnoremap <F3> :NERDTreeToggle<CR>
set pastetoggle=<F10>

" header/source file switch
nnoremap <F2> :A<CR>

inoremap ( ()<ESC>i

" format code
nnoremap <leader>fm ggVG=
nnoremap <leader>cl :nohl<CR>

nnoremap <C-o> zA

nnoremap <C-h> 10h
nnoremap <C-j> 10j
nnoremap <C-k> 10k
nnoremap <C-l> 10l

vnoremap <C-h> 10h
vnoremap <C-j> 10j
vnoremap <C-k> 10k
vnoremap <C-l> 10l

nnoremap <leader>vs :vs<CR>
nnoremap <leader>sp :sp<CR>

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
let g:ycm_global_ycm_extra_conf = '/Users/cx/.vim/bundle/YouCompleteMe//third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = '0'
let g:ycm_show_diagnostics_ui = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_collect_identifiers_from_tags_files = 1


""""""""""""""""""""""""""""""""""""""""""""
" NERD Commenter
""""""""""""""""""""""""""""""""""""""""""""
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1


""""""""""""""""""""""""""""""""""""""""""""
" restore cursor position
""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" airline theme
" let g:airline_theme='base16_google'



""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
  let cs_path = system("which cscope")
  execute "set csprg=".cs_path
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
