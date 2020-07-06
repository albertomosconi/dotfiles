" set leader key to space
let g:mapleader = "\<Space>"

" CONFIGURATION
syntax enable				" syntax highlighting
set encoding=utf-8			" encoding displayed
set fileencoding=utf-8
set number relativenumber	" shows line numbers on the left relative to cursor position
set hidden	    			" required to keep multiple buffers open
set nowrap	    			" no screen wrapping
set pumheight=10			" popup menu height smaller
set ruler	    			" always show cursor position
set cmdheight=2				" more space for displaying messages
set iskeyword+=-			" dash separated word are read as single word object
set mouse=a	    			" enable mouse
set splitbelow				" hsplit are automatically below
set splitright				" vsplit are automatically right
set t_Co=256				" support 256 colors
set tabstop=4 softtabstop=4
set shiftwidth=4			" number of spaces for indentation
set smarttab				" tabs are smart
set expandtab				" converts tabs to spaces
set smartindent				" indent is smart
set autoindent				" good autoindent
set showtabline=2           " show tabs
set nobackup                " recommended by coc
set nowritebackup           " recommended by coc
set updatetime=300          " faster completion
set clipboard=unnamedplus   " copy pasting everywhere
set undodir=~/.config/nvim/undodir
set undofile
set incsearch

" auto-source init.vim
autocmd BufWritePost $MYVIMRC source %
" auto-merge Xresources when edited
autocmd BufWritePost $XDG_CONFIG_HOME/Xresources !cd $XDG_CONFIG_HOME; xrdb -merge Xresources

" PLUGINS
call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-fugitive'               " git integration
call plug#end()

" KEYBINDINGS
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gs :G<CR>>

nmap <leader>h :wincmd h<CR>
nmap <leader>j :wincmd j<CR>
nmap <leader>k :wincmd k<CR>
nmap <leader>l :wincmd l<CR>
nmap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nmap <Leader>ps :Rg<SPACE>
nmap <silent> <Leader>+ :vertical resize +5<CR>
nmap <silent> <Leader>- :vertical resize -5<CR>
