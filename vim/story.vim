" Disable compatibility with old Vi to avoid unexpected results
set nocompatible 

set wrap
set linebreak
set spell
" set columns=120
hi clear SpellBad
hi SpellBad cterm=underline

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

" Search Related
set showmatch 		" show matching
set ignorecase		" case insensitive while searching 
set hlsearch		" highlight search
set incsearch		" incremental search 


" Splits Related  
set splitbelow splitright

" Remap splits navigation to Ctrl + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusting split sizes a bit more friendly. Thanks DT!
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert
nnoremap <C-f> <C-w>t<C-w>H
nnoremap <C-g> <C-w>t<C-w>K


" Removes pipes | that act as seperators on splits
set fillchars+=vert:\ 

" Mappings
nnoremap <F12> :NERDTreeToggle<CR>
nnoremap ee $
nnoremap aa 0
nnoremap <C-p> "0P
nnoremap ; :
inoremap <F12> <Esc>:NERDTreeToggle<CR>
inoremap qq <Esc>
inoremap <C-u> <Esc>ui
vnoremap qq  <Esc>
  
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'preservim/nerdtree' |
Plug 'itchyny/lightline.vim'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
call plug#end()

" Nightfly colorscheme and lightline statusbar
set laststatus=2 
colorscheme nightfly
  let g:nightflyCursorColor = 1
  let g:nightflyUnderlineMatchParen = 1
 let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active':{
      \ 'right':[['lineinfo'],['percent'],['fileformat', 'fileencoding', 'filetype', 'charvaluehex']],
      \ 'left':[['mode','paste'],['filename']]},
      \ 'component':{
      \ 'charvaluehex':'0x%B'},
      \ }  
