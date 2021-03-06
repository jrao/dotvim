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

" When scrolling, always show 10 lines around cursor
set scrolloff=10

" Change the mapleader from \ to ,
let mapleader=","

" Use case insensitive search unless search term includes at least one upper
" case character
:set ignorecase
:set smartcase

" Soft wrap
:set wrap linebreak nolist

" Use UTF-8 for for everything
set encoding=utf-8 fileencoding=utf-8 termencoding=utf-8

" Set backup folder
set backupdir=~/.vimbackup,~/tmp,~/

" Spellcheck (see https://robots.thoughtbot.com/vim-spell-checking)
autocmd BufRead,BufNewFile *.txt setlocal spell
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.markdown setlocal spell

" Set tab behavior
set tabstop=4
set shiftwidth=4

" Highlight all columns past 80
let &colorcolumn=join(range(81,999),",")
" Set color column color
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" Make all yank/delete/paste options use the system register *
set clipboard=unnamedplus

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
Plug 'https://github.com/jez/vim-better-sml'
Plug 'https://github.com/plasticboy/vim-markdown'
call plug#end()

" Toggle NERDTree
" map <C-n> :NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>

" Remap add mark from 'm' to 'gm' since 'm' is used by easyclip:
" https://github.com/svermeulen/vim-easyclip
nnoremap gm m

" Toggle Goyo
nnoremap <silent> <leader>z :Goyo<cr>

" Open recent files list (mru: most recently used)
nnoremap <leader>r :MRU<cr>

" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" from https://blog.jez.io/sml-dev-setup/
augroup mySyntastic
  " tell syntastic to always stick any detected errors into the location-list
  au FileType sml let g:syntastic_always_populate_loc_list = 1
  " automatically open and/or close the location-list
  au FileType sml let g:syntastic_auto_loc_list = 1
augroup END
" press <Leader>S (i.e., \S) to not automatically check for errors
nnoremap <Leader>S :SyntasticToggleMode<CR>

" Enabling https://github.com/plasticboy/vim-markdown enables markdown
" folding. This disables it.
let g:vim_markdown_folding_disabled=1
