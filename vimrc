set nocompatible
filetype off

" set runtime path for Vundle
set rtp+=~/.vim/bundle/Vundle.vim

" Begin plugins/vundle
call vundle#begin()
" Let vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'tpope/vim-fugitive'
Plugin 'honza/vim-snippets'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'

" end plugins/vundle
call vundle#end()

" --Basics
filetype plugin indent on
syntax enable
set shell=zsh
set number
set mouse=a
set cursorline
set ignorecase
set smartcase
set title
set undofile
set matchtime=2
set laststatus=2

let g:SuperTabDefaultCompletionType = "context"

" file handling
set autoread
set fileencoding=utf-8
set history=50
set modeline
set noswapfile
set tags=./.tags;/
set viminfo="NONE"
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set autochdir
set undodir=~/.vim/undo
set fileformat=unix
set fileformats=unix,dos,mac

" Paste toggle, if we paste in from a different application paste mode
" prevents White spaces
set pastetoggle=<F7>

" Formatting
set autoindent
set expandtab
set shiftwidth=4
set smarttab
set softtabstop=4
set tabstop=4

" Appearence
set background=dark
colorscheme solarized
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1
