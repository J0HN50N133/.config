"""""""""""""""""""""""""""""""""""""""""""""""""
"             _             _                   "
"  __ _ _   _| |_ ___ _ __ | |_ __ _  __ _ ___  "
" / _` | | | | __/ _ \ '_ \| __/ _` |/ _` / __| "
"| (_| | |_| | ||  __/ | | | || (_| | (_| \__ \ "
" \__, |\__,_|\__\___|_| |_|\__\__,_|\__, |___/ "
" |___/                              |___/      "
"""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" " 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
  silent! call mkdir(s:vim_tags, 'p')
endif

"""""""""""""""""""""""""""""""""""""""""""""""""
"    _                                          "
"   / \   ___ _   _ _ __   ___ _ __ _   _ _ __  "
"  / _ \ / __| | | | '_ \ / __| '__| | | | '_ \ "
" / ___ \\__ \ |_| | | | | (__| |  | |_| | | | |"
"/_/   \_\___/\__, |_| |_|\___|_|   \__,_|_| |_|"
"             |___/                             "
"""""""""""""""""""""""""""""""""""""""""""""""""

"自动打开 quickfix window ，高度为 6
let g:asyncrun_open = 5

" 任务结束时候响铃提醒
let g:asyncrun_bell = 1

" 设置 F10 打开/关闭 Quickfix 窗口
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''
let g:ale_sign_error = "\ue009\ue009"
let g:asyncrun_open = 8
hi! clear SpellBad
hi! clear SpellCap
hi! clear SpellRare
hi! SpellBad gui=undercurl guisp=red
hi! SpellCap gui=undercurl guisp=blue
hi! SpellRare gui=undercurl guisp=magenta

"自动打开 quickfix window ，高度为 6
let g:asyncrun_open = 5

" 任务结束时候响铃提醒
let g:asyncrun_bell = 1

""""""""""""""""""""""""""""""""""""""
"  ___        _      _     __ _      "
" / _ \ _   _(_) ___| | __/ _(_)_  __"
"| | | | | | | |/ __| |/ / |_| \ \/ /"
"| |_| | |_| | | (__|   <|  _| |>  < "
" \__\_\\__,_|_|\___|_|\_\_| |_/_/\_\"
"                                    "
""""""""""""""""""""""""""""""""""""""
" 设置 F10 打开/关闭 Quickfix 窗口
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''
let g:ale_sign_error = "\ue009\ue009"
let g:asyncrun_open = 8
hi! clear SpellBad
hi! clear SpellCap
hi! clear SpellRare
hi! SpellBad gui=undercurl guisp=red
hi! SpellCap gui=undercurl guisp=blue
hi! SpellRare gui=undercurl guisp=magenta

""""""""""""""""""""""""""""""""""""""""""""""""
"  __ _             _   _                      "
" / _| | ___   __ _| |_| |_ ___ _ __ _ __ ___  "
"| |_| |/ _ \ / _` | __| __/ _ \ '__| '_ ` _ \ "
"|  _| | (_) | (_| | |_| ||  __/ |  | | | | | |"
"|_| |_|\___/ \__,_|\__|\__\___|_|  |_| |_| |_|"
""""""""""""""""""""""""""""""""""""""""""""""""
                                              

let g:floaterm_keymap_new = '<leader>sn'
let g:floaterm_keymap_kill = '<leader>sk'
let g:floaterm_keymap_toggle = '<leader>st'
noremap <leader>sr :FloatermNew ranger $PWD<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                      _   _             
"  ___  __ _ ___ _   _ _ __ ___   ___ | |_(_) ___  _ __  
" / _ \/ _` / __| | | | '_ ` _ \ / _ \| __| |/ _ \| '_ \ 
"|  __/ (_| \__ \ |_| | | | | | | (_) | |_| | (_) | | | |
" \___|\__,_|___/\__, |_| |_| |_|\___/ \__|_|\___/|_| |_|
"                |___/                                   
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1
nmap <Leader>ef <Plug>(easymotion-bd-f)
nmap <Leader>ef <Plug>(easymotion-overwin-f)
nmap <Leader>es <Plug>(easymotion-overwin-f2)
nmap <Leader>el <Plug>(easymotion-lineforward)
nmap <Leader>ej <Plug>(easymotion-j)
nmap <Leader>ek <Plug>(easymotion-k)
nmap <Leader>eh <Plug>(easymotion-linebackward)
nmap <Leader>ew <Plug>(easymotion-w)
nmap <Leader>eb <Plug>(easymotion-b)
nmap <Leader>ee <Plug>(easymotion-e)
