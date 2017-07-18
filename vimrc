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

" Make all yank/delete/paste options use the system register *
set clipboard=unnamed

" Plugin Management
" Using vim-plug: https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-repeat'
Plug 'https://github.com/svermeulen/vim-easyclip'
Plug 'https://github.com/flazz/vim-colorschemes'
Plug 'https://github.com/jlanzarotta/bufexplorer'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/yegappan/mru'
Plug 'https://github.com/junegunn/goyo.vim'
Plug 'https://github.com/amix/vim-zenroom2'
Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'https://github.com/Valloric/YouCompleteMe'
call plug#end()

" Toggle NERDTree
" map <C-n> :NERDTreeToggle<CR>
map nn :NERDTreeToggle<CR>

" Remap add mark from 'm' to 'gm' since 'm' is used by easyclip:
" https://github.com/svermeulen/vim-easyclip
nnoremap gm m

" Toggle Goyo
nnoremap <silent> <leader>z :Goyo<cr>

" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
