set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set encoding=UTF-8
set hlsearch                " highlight search 
set incsearch               " incremental search
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set tabstop=2               " number of columns occupied by a tab 
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set cc=120                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
filetype plugin on
" set spell                 " enable spell check (may need to download language package)
set noswapfile            " disable creating swap file

call plug#begin("~/.config/nvim/plugged")
" Plugin Section
Plug 'dracula/vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'ruanyl/vim-gh-line'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-abolish'
Plug 'vim-test/vim-test'
call plug#end()

" shortcuts
let mapleader = "\\"
noremap <leader>nt :NERDTree<CR>
noremap <leader>nf :NERDTreeFind<CR>

noremap <leader>gb :Git blame<CR>
noremap <leader>gd :Git diff<CR>

noremap <leader>nh :noh<CR>
noremap <leader>gh :noh<CR>

let g:fzf_layout = { 'down': '40%' }
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
noremap <leader>ff :FZF<CR>
noremap <leader>vvv :source ~/.config/nvim/init.vim<CR>


colorscheme dracula
" open new split panes to right and below
set splitright
set splitbelow
set cursorline

nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

nmap <silent> <leader>rf :TestNearest<CR>
nmap <silent> <leader>rb :TestFile<CR>
nmap <silent> <leader>rl :TestLast<CR>
let test#startegy = "vimux"
" autocmd BufWritePre *.tsx,*.ts,*.js,*.jsx :CocCommand prettier.forceFormatDocument
nmap <silent> <leader>fm :CocCommand prettier.forceFormatDocument<CR>
