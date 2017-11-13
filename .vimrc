set nocompatible              " be iMproved, required
filetype off                  " required
" 256-color terminal
" set t_Co=256
execute pathogen#infect()

"set mouse=a

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'nerdtree'
Plugin 'surround'
Plugin 'vim-fireplace'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""" NERDTree settings
" Leader-n maps starts off a nerdtree command
noremap <Leader>n :NERDTree
noremap <F2> :NERDTreeToggle<CR>
" set the working directory when changing root
let NERDTreeChDirMode = 2

set clipboard=unnamedplus

""" vim discipline
" unmap the arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
imap jj <Esc>

" Enable line numbers.

 set number

" Highlight search results.

set hlsearch

" Set the width of a tab press.

set tabstop=2

" Set the width of autoindention.

set shiftwidth=2

" Use space characters when tab key is pressed. This doesn't convert

" existing tabs to spaces.

set expandtab

" Automatically indent entire file.

"autocomplete filename for tabedit
set wildmode=longest,list

map <F3> gg=G''

"scroll through tabs
map <F5> :tabe 
map <F7> :tabp<Return>
map <F8> :tabn<Return>
map <F9> ysiw
map <F12> yss


filetype indent on
set cindent

colo desertEx
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

autocmd BufReadPost *
      \ if &readonly
      \| colo rockets-away
      \| endif
