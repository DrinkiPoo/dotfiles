let g:user_emmet_expandabbr_key='<Tab><Tab>'
imap <expr> <tab><tab> emmet#expandAbbrIntelligent("\<tab><tab>")
let g:user_emmet_settings = {
  \  'javascript' : {
    \      'extends' : 'jsx',
    \  },
  \}


