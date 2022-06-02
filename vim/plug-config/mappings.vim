" Normal Mode
nnoremap <leader>f :NERDTreeToggle<CR>
nnoremap <C-e> $
nnoremap <C-a> 0
nnoremap <C-p> "0p
nnoremap ; :
nnoremap Y y$
nnoremap <C-v> "+p
nnoremap <leader>t :vsplit term://bash<CR>
nnoremap <leader>y :split term://bash<CR>
nnoremap <C-q> :reg<CR>

" Opening buffers as vertical splits
nnoremap <C-b> :ls <CR>
nnoremap <leader>1 :vert sb 1<CR>
nnoremap <leader>2 :vert sb 2<CR>
nnoremap <leader>3 :vert sb 3<CR>
nnoremap <leader>4 :vert sb 4<CR>
nnoremap <leader>5 :vert sb 5<CR>
nnoremap <leader>6 :vert sb 6<CR>
nnoremap <leader>7 :vert sb 7<CR>
nnoremap <leader>8 :vert sb 8<CR>
nnoremap <leader>9 :vert sb 9<CR>


" Go to the next buffers
nnoremap <A-p> :bn<CR>
nnoremap <A-o> :bp<CR>
inoremap <A-p> <ESC>:bn<CR>
inoremap <A-o> <ESC>:bp<CR>

" Tabs
" I have decided to give buffers a try before succumbing to tabs

" Insert Mode 
inoremap <leader>f <Esc>:NERDTreeToggle<CR>
inoremap qq <Esc>
inoremap <C-e> <Esc>A
inoremap <C-a> <Esc>0i
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-u> <ESC>ui
inoremap <C-d> <Esc>ddi
inoremap ;; <Esc>:
inoremap <C-b> <Esc>GA
inoremap zz <Esc>zz
inoremap <leader>p "+p
inoremap <C-q> <Esc> :reg<CR>
inoremap <C-0> <Esc>0i

"Use <C-p> for trigger snippet expand.
imap <C-i> <Plug>(coc-snippets-expand)

" Visual Mode
vnoremap qq  <Esc>
vnoremap <C-c> "+y


" Command Mode
cnoremap qq q! 

" Terminal Mode
tnoremap qq <C-\><C-n> 
