" set leader key to space
let g:mapleader = "\<Space>"

" CONFIGURATION
syntax enable				" syntax highlighting
set encoding=utf-8			" encoding displayed
set fileencoding=utf-8
set number relativenumber		" shows line numbers on the left relative to cursor position
set hidden				" required to keep multiple buffers open
set nowrap				" no screen wrapping
set pumheight=10			" popup menu height smaller
set ruler				" always show cursor position
set cmdheight=2				" more space for displaying messages
set iskeyword+=-			" dash separated word are read as single word object
set mouse=a				" enable mouse
set splitbelow				" hsplit are automatically below
set splitright				" vsplit are automatically right
set t_Co=256				" support 256 colors
set shiftwidth=2			" number of spaces for indentation
set smarttab				" tabs are smart
set expandtab				" converts tabs to spaces
set smartindent				" indent is smart
set autoindent				" good autoindent
set showtabline=2                       " show tabs
set nobackup                            " recommended by coc
set nowritebackup                       " recommended by coc
set updatetime=300                      " faster completion
set clipboard=unnamedplus               " copy pasting everywhere

" auto-source init.vim
autocmd BufWritePost $MYVIMRC source %
" auto-merge Xresources when edited
autocmd BufWritePost /home/alberto/.config/Xresources !cd /home/alberto/.config/; xrdb -merge Xresources

" KEYBINDINGS
