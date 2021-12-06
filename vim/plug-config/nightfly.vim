" Nightfly colorscheme and lightline statusbar
set laststatus=2 
colorscheme nightfly
 let g:nightflyCursorColor = 1
 let g:nightflyUnderlineMatchParen = 1
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ 'active':{
    \ 'right':[['lineinfo'],['percent'],['filetype', 'charvaluehex']],
    \ 'left':[['mode','paste'],['filename','gitbranch']]},
     \ 'component':{
     \ 'charvaluehex':'0x%B'},
     \ 'component_function':{
     \ 'gitbranch':'GitStatus'}
     \ }  


 " \ 'right':[['lineinfo'],['percent'],['fileformat', 'fileencoding', 'filetype', 'charvaluehex']]
