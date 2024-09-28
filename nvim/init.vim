let b:coc_diagnostic_disable=1
let g:tmpl_search_paths = ['~/.config/nvim/templates']
set nocompatible

call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/tibabit/vim-templates'
Plug 'https://github.com/dylanaraps/wal.vim'
Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'https://github.com/preservim/nerdtree'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

":set t_Co=16
"lua require'colorizer'.setup()
"set nocompatible
set notermguicolors
set background=dark
colorscheme wal

:set encoding=utf-8
:set number
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
nnoremap <C-y> :mksession! s.vim<CR>
nnoremap <C-t> :! st > /dev/null 2>&1 & <CR>
nnoremap <C-p> :! zathura *.pdf &<CR> 
nnoremap <C-o> :! pdflatex *.tex<CR> 
nnoremap <C-s> :vsplit<CR>
nnoremap <S-s> :split<CR>
nnoremap <C-f> :NERDTreeToggle<CR>
nnoremap <s-F> :NERDTreeFind<CR>
" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
nnoremap <F3> :set hlsearch!<CR>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap < <><left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

