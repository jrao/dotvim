" When setting up Vim on a new machine, download the dotvim repo to ~ folder
" and link ~/.vimrc to ~/.vim/vimrc:
" ln -s ~/.vim/vimrc ~/.vimrc

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Turn on syntax highlighting
syntax enable

" Display line numbers
:set number

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" By default, Vim saves only your last 8 commands.
set history=100

colorscheme elflord

" Map jj to <Esc> so easily switch from insert mode to normal mode
:imap jj <Esc>

" Make j and k move to next visual line not next actual line
noremap j gj
noremap k gk

" Change the mapleader from \ to ,
let mapleader=","

" Use case insensitive search unless search term includes at least one upper case character
:set ignorecase
:set smartcase

" Soft wrap
:set wrap linebreak nolist

" Set backup folder
set backupdir=~/.vimbackup,~/tmp,~/

" Set spellcheck on
set spell

" Set tab behavior
set tabstop=4
set shiftwidth=4
