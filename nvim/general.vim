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
<<<<<<< HEAD:nvim/general.vim
set autochdir
set hidden
set termguicolors
set softtabstop=-1
=======
set lazyredraw " Don't redraw when we don't have to
set autochdir
set hidden
set noshowmode " Don't show the current mode (airline.vim takes care of us)
set termguicolors
set softtabstop=-1
set nostartofline " Don't reset cursor to start of line when moving around
>>>>>>> 9e51854e6a27380889842d65a539bf751bf58cb4:nvim/general_setting.vim
set shiftwidth=8
set ts=8
set expandtab
set smarttab
set smartindent
set autoindent
filetype plugin indent on
<<<<<<< HEAD:nvim/general.vim

=======
>>>>>>> 9e51854e6a27380889842d65a539bf751bf58cb4:nvim/general_setting.vim
set mouse=a
set mousehide
set wildmenu
set encoding=utf-8
set wrap "Wrap line
"外部文件改变自动读取
set autoread
au FocusGained,BufEnter * checktime
"wildmenu忽略中间文件
set wildignore=*.o,*~
set ruler
set t_Co=256
set cursorline cursorcolumn
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
<<<<<<< HEAD:nvim/general.vim
=======
set nocompatible
set magic " Enable extended regexes
set scrolloff=3 " Start scrolling three lines before horizontal border of window

>>>>>>> 9e51854e6a27380889842d65a539bf751bf58cb4:nvim/general_setting.vim

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


""""""" auto fcitx """""""

let g:input_toggle = 1
function! Fcitx2en()
   let s:input_status = system("fcitx5-remote")
   if s:input_status == 2
      let g:input_toggle = 1
      let l:a = system("fcitx5-remote -c")
   endif
endfunction

function! Fcitx2zh()
   let s:input_status = system("fcitx5-remote")
   if s:input_status != 2 && g:input_toggle == 1
      let l:a = system("fcitx5-remote -o")
      let g:input_toggle = 0
   endif
endfunction

set ttimeoutlen=150
"退出插入模式
autocmd InsertLeave * call Fcitx2en()
"进入插入模式
autocmd InsertEnter * call Fcitx2zh()

"##### auto fcitx end ######
