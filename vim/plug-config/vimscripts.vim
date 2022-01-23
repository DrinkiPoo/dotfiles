" Enable the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" Close vim if nerdtree is the only tab
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Git-Gutter Func to be used in lightline
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
"set statusline+=%{GitStatus()}

let g:AutoPairsShortcutToggle = '<A-[>'
let g:AutoPairsMapCh = 0
