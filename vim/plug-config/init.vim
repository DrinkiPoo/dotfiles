"           ____       _     __     __  _____   _   ____  
"          |  _ \     / \    \ \   / / | ____| ( ) / ___| 
"          | | | |   / _ \    \ \ / /  |  _|   |/  \___ \ 
"          | |_| |  / ___ \    \ V /   | |___       ___) |
"          |____/  /_/   \_\    \_/    |_____|     |____/ 
"                                                         
"          __     __   ___    _        ____      _      _   _   ___    ____ 
"          \ \   / /  / _ \  | |      / ___|    / \    | \ | | |_ _|  / ___|
"           \ \ / /  | | | | | |     | |       / _ \   |  \| |  | |  | |    
"            \ V /   | |_| | | |___  | |___   / ___ \  | |\  |  | |  | |___ 
"             \_/     \___/  |_____|  \____| /_/   \_\ |_| \_| |___|  \____|
"                                                                           
"          __     __  ___   __  __   ____     ____ 
"          \ \   / / |_ _| |  \/  | |  _ \   / ___|
"           \ \ / /   | |  | |\/| | | |_) | | |    
"            \ V /    | |  | |  | | |  _ <  | |___ 
"             \_/    |___| |_|  |_| |_| \_\  \____|



" softlink this file to ~/.config/nvim/init.vim
source ~/.config/dotfiles/vim/plug-config/coc.vim
source ~/.config/dotfiles/vim/plug-config/general.vim
source ~/.config/dotfiles/vim/plug-config/splits.vim
source ~/.config/dotfiles/vim/plug-config/plugins.vim
source ~/.config/dotfiles/vim/plug-config/mappings.vim
source ~/.config/dotfiles/vim/plug-config/vimscripts.vim
source ~/.config/dotfiles/vim/plug-config/nightfly.vim

lua << EOF
require('lualine').setup({
options ={
    icons_enabled = false,
    theme = 'nightfly'
    }
   })
EOF
