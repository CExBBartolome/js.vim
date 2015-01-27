set nocompatible              " be iMproved, required
filetype off                  " required
"set t_Co=256
syntax on
"set background=dark
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins

"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'jelera/vim-javascript-syntax'

Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'Raimondi/delimitMate'

Plugin 'scrooloose/syntastic'
Plugin 'marijnh/tern_for_vim'
Plugin 'Valloric/YouCompleteMe'

" These are the tweaks I apply to YCM's config, you don't need them but they
" might help.
" YCM gives you popups and splits by default that some people might not
" like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview


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
set backspace=indent,eol,start
let g:syntastic_check_on_open=1
" set paste
set number
" au FileType javascript call JavaScriptFold()
" set foldmethod=syntax
" set foldlevelstart=100
set path=$PWD/**
set hlsearch
