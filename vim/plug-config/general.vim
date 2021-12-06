" Set '\' as the mapleader
let mapleader='\'

" Disable compatibility with old Vi to avoid unexpected results
set nocompatible 

" Only a signle line below the statusbar
set cmdheight=1
" Encoding 
set encoding=UTF-8

" Disable the mode display at the bottom since lightline already shows it
set noshowmode

" Automatically change working dir to that of the file you're working on. Not
" too sure about this one. Let's see
set autochdir

" Colors
set termguicolors

" Mouse
set mouse=a

" Line numbering
set number
set relativenumber

" Tabs and spaces
set shiftwidth=4
set tabstop=4
set expandtab
"set softtabstop=4	" see multiple spaces as tabstops

" Search Related
set showmatch 		" show matching
set ignorecase		" case insensitive while searching 
set hlsearch		" highlight search
set incsearch		" incremental search 

" Filetype Related
syntax on           " Turn on syntax highlighting
filetype on         " Enable type file detection
filetype plugin on  " Enable plugins and load plugins for filetype
filetype indent on  " Load an indent file for the detected file type

" Suggestion for command mode
set wildmenu
set wildmode=longest,list,full


 " set rtp+=/usr/lib/python3.9/site-packages/powerline/bindings/vim
 " python3 from powerline.vim import setup as powerline_setup
 " python3 powerline_setup()
 " python3 del powerline_setup

" First command maps (through linux/xmodmap) the caps lock key to the minus
" key (which is my leader) when we enter vim. The second command reverts it
" back to a caps lock when we exit vim. 
" au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = minus'
" au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

