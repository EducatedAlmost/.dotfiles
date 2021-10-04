set nocompatible
filetype off
syntax on
filetype plugin indent on

set so=99
set tabstop=4
set shiftwidth=4
set rnu
set autoindent
set ruler
set wildmenu

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/ShowPairs'
Plugin 'bling/vim-airline'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'

Plugin 'altercation/vim-colors-solarized'
Plugin 'ciaranm/inkpot'

call vundle#end()

let mapleader=","
let maplocalleader="\\"

map <leader><leader> <ESC>
map <leader>qj ddp
map <leader>qk ddkkp

imap <C-BS> <C-W>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <leader>w <C-w>_
nmap <leader>W :res 0<CR>

if $TERM == 'xterm'
	  set t_Co=256
endif

if $COLORTERM == 'gnome-terminal'
	  set t_Co=256
endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:airline_powerline_fonts = 1

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
