set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'shanzi/autoHEADER'
Plugin 'rust-lang/rust.vim'
Plugin 'Ntpeters/vim-better-whitespace'
Plugin 'nvie/vim-flake8'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'xuhdev/indent-java.vim'
Plugin 'alvan/vim-closetag'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ==== VIM CONFIGURATION

set shiftwidth=4    "Sets shift '<' '>' column width
set expandtab       "Converts tabs to spaces
set softtabstop=4   "Sets number of columns a tab equals
set autoindent      "Keep same spacing on newline
:color desert       "Color that is easier to see with dark background
set colorcolumn=80  "Adds red column marker at 80 characters wide
set number          "Adds line number marker
set numberwidth=3   "Sets 'gutter' column indent to 3 spaces
set textwidth=79    "Lines longer than 79 columns will be broken
set tabstop=4       "Hard tab display 4 columns

set incsearch            "Search as you type
set hlsearch             "Highlight matched terms
set ignorecase           "Ignore case when searching all lowercase
set smartcase
set ls=2                 "Always show the status line
set vb                   "Set screen flash on vim error
set scrolloff=4          "Keep 4 lines visible when scrolling
set showcmd              "Show the current command being typed

" Make backspace work as indented by people who weren't stupid.
set backspace=indent,eol,start
set whichwrap+=<,>,h,l
" -----

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" -----

set foldcolumn=1        " Margin where the lines column is

set showmode             "Show what mode you are in
set clipboard=autoselect "Let VIM use the system clipboard

set smartindent          "Autoindent behaviour
syntax on                "Turns on syntax

let g:syntastic_python_python_exec = '/usr/bin/python3'
let g:autoHEADER_default_author = 'Félix Chiasson'
let g:autoHEADER_fill_char_repeat = 78

" Load key mappings
source ~/.vim/mapping.vim

" Autocmd settings
source ~/.vim/au.vim

" Backups
source ~/.vim/backups.vim

" Syntastic settings
source ~/.vim/syntastic-settings.vim
