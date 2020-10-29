"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
"Tool
Plug 'junegunn/vim-easy-align'
Plug 'https://hub.fastgit.org/junegunn/goyo.vim',{'on':'Goyo'}
Plug 'https://hub.fastgit.org/easymotion/vim-easymotion'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
"Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-surround'
Plug 'voldikss/vim-floaterm'
Plug 'justinmk/vim-sneak'
Plug 'preservim/nerdcommenter'
Plug 'ludovicchabant/vim-gutentags'
Plug 'jiangmiao/auto-pairs'
Plug 'roxma/nvim-yarp'
Plug 'https://hub.fastgit.org/ervandew/supertab'
Plug 'https://hub.fastgit.org/Shougo/defx.nvim',{'do':':UpdateRemotePlugins'}

"highlight
Plug 'sheerun/vim-polyglot'

""""""""""""""""""Plug-For-language""""""""""""""""""""""
"Auto complete
Plug 'https://hub.fastgit.org/neoclide/coc.nvim',{'branch':'release'}

Plug 'tpope/vim-markdown', {'for': 'markdown'}
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'lervag/vimtex',{'on': 'NERDTreeToggle'}

Plug 'fatih/vim-go',{'for':'go'}
Plug 'vim-jp/vim-go-extra',{'for':'go'}
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh'  }
Plug 'https://hub.fastgit.org/AndrewRadev/splitjoin.vim'
Plug 'https://hub.fastgit.org/ctrlpvim/ctrlp.vim'

" skirt
Plug 'terryma/vim-smooth-scroll'
"Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'https://hub.fastgit.org/vim-airline/vim-airline-themes'
Plug 'https://hub.fastgit.org/itchyny/vim-cursorword'
Plug 'frazrepo/vim-rainbow'
"Plug 'arcticicestudio/nord-vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'dense-analysis/ale'
Plug 'https://hub.fastgit.org/theniceboy/vim-deus'
"Plug 'https://hub.fastgit.org/tomasr/molokai'

call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" =====
" ===== coc.nvim
" =====

set hidden
set updatetime=100
let g:coc_global_extensions = [
    \"coc-actions",
    \"coc-ci",
    \"coc-clangd",
    \"coc-dictionary",
    \"coc-go",
    \"coc-highlight",
    \"coc-html",
    \"coc-json",
    \"coc-lists",
    \"coc-marketplace",
    \"coc-pyright",
    \"coc-python",
    \"coc-snippets",
    \"coc-tag",
    \"coc-translator",
    \"coc-vimlsp",
    \"coc-go",]
