""""""""""""""""""""""""""""""""""""""""""""""""""""
" _              _     _           _ _             "
"| | _____ _   _| |__ (_)_ __   __| (_)_ __   __ _ "
"| |/ / _ \ | | | '_ \| | '_ \ / _` | | '_ \ / _` |"
"|   <  __/ |_| | |_) | | | | | (_| | | | | | (_| |"
"|_|\_\___|\__, |_.__/|_|_| |_|\__,_|_|_| |_|\__, |"
"          |___/                             |___/ "
""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader="\<space>"
" 按<F3>打开或关闭目录树
nmap <F12> :edit ~/.config/nvim/init.vim<CR>
nmap <F3> :Defx -split=vertical -winwidth=50 -direction=topleft<CR>
autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
  " Define mappings
  nnoremap <silent><buffer><expr> <CR>
        \ defx#do_action('open')
  nnoremap <silent><buffer><expr> c
        \ defx#do_action('copy')
  nnoremap <silent><buffer><expr> m
        \ defx#do_action('move')
  nnoremap <silent><buffer><expr> p
        \ defx#do_action('paste')
  nnoremap <silent><buffer><expr> l
        \ defx#do_action('open')
  nnoremap <silent><buffer><expr> E
        \ defx#do_action('open', 'vsplit')
  nnoremap <silent><buffer><expr> P
        \ defx#do_action('preview')
  nnoremap <silent><buffer><expr> o
        \ defx#do_action('open_tree', 'toggle')
  nnoremap <silent><buffer><expr> K
        \ defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> N
        \ defx#do_action('new_file')
  nnoremap <silent><buffer><expr> M
        \ defx#do_action('new_multiple_files')
  nnoremap <silent><buffer><expr> C
        \ defx#do_action('toggle_columns',
        \                'mark:indent:icon:filename:type:size:time')
  nnoremap <silent><buffer><expr> S
        \ defx#do_action('toggle_sort', 'time')
  nnoremap <silent><buffer><expr> d
        \ defx#do_action('remove')
  nnoremap <silent><buffer><expr> r
        \ defx#do_action('rename')
  nnoremap <silent><buffer><expr> !
        \ defx#do_action('execute_command')
  nnoremap <silent><buffer><expr> x
        \ defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> yy
        \ defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> .
        \ defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> ;
        \ defx#do_action('repeat')
  nnoremap <silent><buffer><expr> h
        \ defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> ~
        \ defx#do_action('cd')
  nnoremap <silent><buffer><expr> q
        \ defx#do_action('quit')
  nnoremap <silent><buffer><expr> <Space>
        \ defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> *
        \ defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr> j
        \ line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k
        \ line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> <C-l>
        \ defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-g>
        \ defx#do_action('print')
  nnoremap <silent><buffer><expr> cd
        \ defx#do_action('change_vim_cwd')
  nnoremap <silent><buffer><expr> <2-LeftMouse> defx#do_action('open')
  nnoremap <silent><buffer><expr> > defx#do_action('resize',
        \ defx#get_context().winwidth + 10)
  nnoremap <silent><buffer><expr> < defx#do_action('resize',
	\ defx#get_context().winwidth - 10)
endfunction
nmap <F5> :source ~/.config/nvim/init.vim<CR>
nmap W :w<CR>
nmap <CR> o<Esc>
noremap Q :q!<CR>
noremap <leader>q :q!<CR>
noremap gt :bn<CR> 
noremap gT :bp<CR>
noremap gP :b#<CR> 
noremap <up> <c-w>+
noremap <down> <c-w>-
noremap <left> <c-w><
noremap <right> <c-w>>
"Fast saving
map f <Plug>Sneak_s
map F <Plug>Sneak_S
map t <Plug>Sneak_t
map T <Plug>Sneak_T
map j gj
map k gk
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
