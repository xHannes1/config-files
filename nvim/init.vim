let b:coc_diagnostic_disable=1
let g:tmpl_search_paths = ['~/.config/nvim/templates']


call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/tibabit/vim-templates'
Plug 'https://github.com/dylanaraps/wal.vim'
"Plug 'https://github.com/norcalli/nvim-colorizer.lua'
Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
call plug#end()

":set t_Co=16
"lua require'colorizer'.setup()
"set nocompatible
set notermguicolors
set background=dark
colorscheme wal

:set number
:set relativenumber
:set autoindent
:set smartindent
:set noexpandtab
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set clipboard+=unnamedplus
:set wrap
:set nobackup
:set nowritebackup
:set updatetime=300
:set cmdheight=1
:set signcolumn=yes
:set ruler
:set visualbell
:syntax on

nnoremap <C-b> :wa<CR> :! make build && make run<CR>
nnoremap <C-a> :wa<CR>
nnoremap <C-t> :! st > /dev/null 2>&1 & <CR>
nnoremap <C-p> :! zathura *.pdf &<CR> 
nnoremap <C-o> :! pdflatex *.tex<CR> 
nnoremap <C-s> :vsplit<CR>
nnoremap <S-s> :split<CR>
nnoremap <F3> :set hlsearch!<CR>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap < <><left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

