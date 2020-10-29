""""""""""""""""""""""""""""""""""""""
"                                 _  "
"  __ _  ___ _ __   ___ _ __ __ _| | "
" / _` |/ _ \ '_ \ / _ \ '__/ _` | | "
"| (_| |  __/ | | |  __/ | | (_| | | "
" \__, |\___|_| |_|\___|_|  \__,_|_| "
" |___/                              "
""""""""""""""""""""""""""""""""""""""
syntax enable
syntax on
set nu rnu
set termguicolors
set expandtab
set softtabstop
set ts=8
set sw=8
set mouse=a
set mousehide
set wildmenu
set smarttab
set smartindent
set encoding=utf-8
set ai "Auto indent
set si "Smart indent
set wrap "Wrap line
filetype plugin indent on
"外部文件改变自动读取
set autoread
au FocusGained,BufEnter * checktime
set so=7
"wildmenu忽略中间文件
set wildignore=*.o,*~
set ruler
set t_Co=256
set cursorline cursorcolumn
if has("win16") || has("win32")
  set wildignore+=.git\*,.hg\*,.svn\*
else
  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""
"           _          "
" _ __ ___ (_)___  ___ "
"| '_ ` _ \| / __|/ __|"
"| | | | | | \__ \ (__ "
"|_| |_| |_|_|___/\___|"
"                      "
""""""""""""""""""""""""

nnoremap <silent><Leader><Leader> /<++><CR>:nohlsearch<CR>ca<
