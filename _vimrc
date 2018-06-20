if &compatible
    set nocompatible
endif

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'mileszs/ack.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'

call vundle#end()
set runtimepath^=~/.vim/bundle/ctrlp.vim

" General stuff
set visualbell
set noerrorbells

set hidden

set modeline

let mapleader = ','

set splitbelow
set splitright

" Appearance
set bg=dark

set number
set relativenumber

set showcmd
set cmdheight=1

set cursorline
set ruler
set laststatus=2
set showtabline=1

set virtualedit=onemore

syntax on
filetype on
filetype plugin on
filetype indent on

" backups
set backupdir=~/.vim/tmp,/var/tmp,/tmp
set directory=~/.vim/tmp,/var/tmp,/tmp

if has("persistent_undo")
    " Keep undo history across sessions, by storing in file.
    set undodir=~/.vim/backups
    set undofile
endif

" Indent
set tabstop=4
set shiftwidth=4
set softtabstop=4

set shiftround
set expandtab

" Search
set ignorecase
set smartcase

set incsearch
set hlsearch
set wrapscan

" Clear highlighted search
nnoremap <silent> <leader>/ :nohlsearch<cr>

" nerd tree
map <leader>n :NERDTreeToggle<cr>

" ctags
set tags=./tags;,tags;
