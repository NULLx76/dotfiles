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

" YCM is installed via an AUR pkg
"Plugin 'Valloric/YouCompleteMe'

" end plugins/vundle
call vundle#end()

" --Basics
filetype plugin indent on
syntax enable
set shell=/bin/zsh
set number
"set mouse=a
set cursorline
set ignorecase
set smartcase
set title
set undofile
set matchtime=2
set laststatus=2
set visualbell

" YCM racer compatability (point to src location of rustc)
let g:ycm_rust_src_path = '/usr/local/src/rust'
let g:ycm_server_python_interpreter = '/usr/bin/python2'

" file handling
set autoread
set fileencoding=utf-8
set history=50
set modeline
set noswapfile
set tags=./.tags;/
set viminfo="NONE"
set backup
set backupdir=~/.vim/backup " Make sure these dirs are created prior
set undodir=~/.vim/undo     " .
set directory=~/.vim/tmp    " .
set autochdir
set fileformat=unix
set fileformats=unix,dos,mac

" Paste toggle, if we paste in from a different application paste mode
" prevents White spaces/auto comment etc.
set pastetoggle=<F7>

" Formatting, tabs=4 spaces
set autoindent
set expandtab
set shiftwidth=4
set smarttab
set softtabstop=4
set tabstop=4
set nowrap

" Appearence
set background=dark
colorscheme solarized
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1

hi Normal ctermbg=none
hi NoText ctermbg=none
