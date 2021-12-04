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

" Swap split positions
nnoremap <Leader>s <C-w>R
