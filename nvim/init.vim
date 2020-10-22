
"""""" __  ____   ____     _____ __  __ 
""""""|  \/  \ \ / /\ \   / /_ _|  \/  |
""""""| |\/| |\ V /  \ \ / / | || |\/| |
""""""| |  | | | |    \ V /  | || |  | |
""""""|_|  |_| |_|     \_/  |___|_|  |_|
""""""
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.config/nvim/general_setting.vim
source ~/.config/nvim/apperance.vim
source ~/.config/nvim/plugList.vim
source ~/.config/nvim/plugconf.vim
source ~/.config/nvim/keybindings.vim
autocmd FileType go source ~/.config/nvim/mygo.vim
