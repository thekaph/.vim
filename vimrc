" Set lines of history vim remembers
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set <leader>
let mapleader=","

" :W to use sudo when saving
command W w !sudo tee % > /dev/null

" set scrolloff so 7 lines up and 7 down is always shown when moving
" vertically
set so=7

" Enable wild menu
set wildmenu

" Enable ruler
set ruler

" increase command line hight
set cmdheight=2

" Set laststatus for lightline
set laststatus=2

" Hide buffer when abandoned
set hid

" ignore case while searching
set ignorecase

" Enable smart case when searching
set smartcase

" Highlight search results
set hlsearch

" Don't redraw while excuting macros
set lazyredraw

" Enable regular expressions
set magic

" show matching brackets
set showmatch

" Blinking time of matching brackets
set mat=2


" Enable syntax  highlighting
syntax enable

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
     set t_Co=256
endif

try
    colorscheme desert
catch
endtry

set background=dark

" Set utf8 encoding
set encoding=utf8

" Stop vim from creating automatic backup
set noswapfile
set nobackup
set nowb

" Use spaces
set expandtab

" Enable smart tabs
set smarttab

" Tab settings
set shiftwidth=4
set tabstop=4

" Set linebreak on 500
set lbr
set tw=500

" Enable auto indent
set ai
" enable smart indent
set si
" enable wrap lines
set wrap

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" open markdown for thinking in
map <leader>x :e ~/buffer.md<cr>



call plug#begin('~/.vim/plugged')

" Vim-slime
Plug 'jpalardy/vim-slime'

" Lightline
Plug 'itchyny/lightline.vim'

" Vim-commentar y
Plug 'tpope/vim-commentary'
" Goyo
Plug 'junegunn/goyo.vim'

" Vim-zenroom2
Plug 'amix/vim-zenroom2'

" Vim-multiple-cursors
Plug 'terryma/vim-multiple-cursors'
"
" Vim-surrond
Plug 'tpope/vim-surround'

" Nerdtree
Plug 'scrooloose/nerdtree'

" Vim-fugitive
Plug 'tpope/vim-fugitive'

" Ctrl-p
Plug 'ctrlpvim/ctrlp.vim'

" Initialize plugin system
call plug#end()

let g:slime_target = "tmux"
















