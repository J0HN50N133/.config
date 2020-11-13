" ===
" === vim-go
" ===
let g:go_echo_go_info = 1
let g:go_doc_popup_window = 1
let g:go_template_autocreate = 1
let g:go_textobj_enabled = 1
let g:fo_addtags_transform = "camelcase"
let g:go_auto_type_info = 1
let g:go_def_mapping_enabled = 1
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_space_tab_error = 1
"let g:go_highlight_string_spellcheck = 1
let g:go_highlight_structs = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_variable_declarations = 1
let g:go_doc_keywordprg_enabled = 0
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['golint', 'errcheck']
let g:go_metalinter_deadline = "5s"

autocmd FileType go nmap <Leader>gb <Plug>(go-build)
autocmd FileType go nmap <Leader>gt <Plug>(go-test)
autocmd FileType go nmap <Leader>+ :cnext<cr>
autocmd FileType go nmap <Leader>- :cprevious<cr>
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
"autocmd BufWritePre *.go :call CocAction('organizeImport') 会引起卡死
"autocmd FileType go nmap gtj :CocCommand go.tags.add json<cr>
"autocmd FileType go nmap gty :CocCommand go.tags.add yaml<cr>
"autocmd FileType go nmap gtx :CocCommand go.tags.clear<cr>
