set nocompatible              " be iMproved, required

" set tab size
set tabstop=2
set shiftwidth=2

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
"Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'Raimondi/delimitMate'

Plugin 'scrooloose/syntastic'
let g:syntastic_javascript_checkers=['jscs','jshint']
let g:syntastic_check_on_open=0

Plugin 'marijnh/tern_for_vim'
Plugin 'Valloric/YouCompleteMe'
" YouCompleteMe and UltiSnips compatibility, with the helper of supertab
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

Plugin 'ervandew/supertab'
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0

Plugin 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

Plugin 'honza/vim-snippets'

Plugin 'tpope/vim-fugitive'

"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
"imap ss <esc>a<Plug>snipMateNextOrTrigger
"smap ss <Plug>snipMateNextOrTrigger

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

" Set filetype to javascript for .js extensions
au BufNewFile,BufRead *.js UltiSnipsAddFiletype javascript

" To ignore plugin indent changes, instead use:
" filetype plugin on
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
" set paste
set number
" au FileType javascript call JavaScriptFold()
" set foldmethod=syntax
" set foldlevelstart=100
set path=$PWD/**
set mouse=a
map <ScrollWheelDown> <Down>
map <ScrollWheelUp> <Up>
set hlsearch
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
let g:netrw_altv=1              " open files on right
let g:netrw_preview=1           " open previews vertically
set colorcolumn=100
set statusline=
set statusline+=%2*[%n%H%M%R%W]%*\
set statusline+=%-40f\
set statusline+=%=%1*%y%*%*\
set statusline+=%10((%l,%c)%)\
set laststatus=2
set dir=~/.swp
