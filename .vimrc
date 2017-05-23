" turn on left and right in command mode
nnoremap <Left>  <Left>
nnoremap <Right> <Right>

" turn on arrow keys in insert mode
inoremap <Left>  <Left>
inoremap <Down>  <Down>
inoremap <Up>    <Up>
inoremap <Right> <Right>

" scroll like less with up and down
nnoremap <silent> <Up> kzz
nnoremap <silent> <Down> jzz

" remap kk to ESC
inoremap <silent> kk <ESC>

" lose vi compatibility
set nocompatible

" turn on syntax highlighting
syntax on

" change to the correct indention and plugins dependent on the file type
filetype on
filetype indent on
filetype plugin on

" turn on line numbers
set number

" turn on the visual bell
set visualbell
set noerrorbells

" tab settings
set autoindent
set smartindent
set smarttab
set expandtab

set shiftwidth=2
set softtabstop=2
set tabstop=2

" allow for cursor beyond last character.
set virtualedit=onemore

" smart case-sensitive searching
set ignorecase
set smartcase

" bash-like file completion
set wildmode=longest,list

" remap ESC
inoremap <silent> jj <ESC>

" minimize the ESC delay
set timeoutlen=1000
set ttimeoutlen=0

" wrapped lines go to next row not next line in file
noremap <silent> j gj
noremap <silent> k gk

" quick command mode
nnoremap <space> :

" remap the leader key
let mapleader=','

" use \ to repeat find backwards
nnoremap <silent> \ ,

" indent the whole file and return to the current line
nnoremap <silent> <leader>i gg=G''

" grep the word under the cursor.
nnoremap <silent> <leader>* :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" add a fast mapping to the last buffer command
nnoremap <silent> <leader>. <C-^>

" open this file's directory using netrw in a split.
nnoremap <silent> <C-n> :vsplit<CR><C-W><C-W>:edit %:p:h<CR>

" shortcuts for moving around split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" shortcuts for opening new split windows
nnoremap <silent> <leader>h :split<CR><C-w><C-w>
nnoremap <silent> <leader>v :vsplit<CR><C-w><C-w>
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>Q :q!<CR>

" F7 to toggle between 'paste' and 'nopaste' in insert mode
set pastetoggle=<F7>

" F8 to toggle line numbers and git-gutter
nnoremap <silent> <F8> :set nonumber!<CR>

" F9 to Toggle list (display unprintable characters)
nnoremap <silent> <F9> :set list!<CR>

" F10 to Toggle highlighting the current line and column.
nnoremap <silent> <F10> :set cursorline!<CR>:set cursorcolumn!<CR>

" use a dark background
set background=dark

" Plugs
call plug#begin('~/.vim/plugged')

Plug 'leafgarland/typescript-vim'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-obsession'
Plug 'ntpeters/vim-better-whitespace'

call plug#end()

" set colorscheme
colorscheme onedark

