let b:coc_diagnostic_disable=1
let g:airline#extensions#tabline#enabled = 1
let g:tmpl_search_paths = ['~/.config/nvim/templates']
set nocompatible

call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/tibabit/vim-templates'
Plug 'https://github.com/dylanaraps/wal.vim'
Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/lukas-reineke/headlines.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-cmdline'

" Snippet Engine & Snippet Source
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" (optional) Snippet Sammlung
Plug 'rafamadriz/friendly-snippets'

" (optional) schöne Icons
Plug 'onsails/lspkind.nvim'

Plug 'neovim/nvim-lspconfig'

call plug#end()

" Treesitter
lua << EOF
  require'nvim-treesitter.configs'.setup {
    ensure_installed = { "markdown", "markdown_inline" },
    highlight = {
      enable = true,
    },
  }
EOF

" Autocomplete and snippets
lua << EOF
local cmp = require('cmp')
local luasnip = require('luasnip')

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { "i", "s" }),

    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),

    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' },
    { name = 'path' },
  }),
  formatting = {
    format = require('lspkind').cmp_format({ maxwidth = 50 })
  }
})
EOF

" clangd
lua << EOF
require('lspconfig').clangd.setup{}
vim.diagnostic.disable()
EOF

":set t_Co=16
"lua require'colorizer'.setup()
"set nocompatible
set notermguicolors
set background=dark
colorscheme wal

:set encoding=utf-8
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
nnoremap <C-y> :mksession! s.vim<CR>
nnoremap <C-t> :! st > /dev/null 2>&1 & <enter><CR>
nnoremap <C-p> :! zathura *.pdf &<CR> 
nnoremap <C-o> :wa<CR> :! pdflatex *.tex<CR> 
nnoremap <C-s> :vsplit<CR>
nnoremap <S-s> :split<CR>
nnoremap <C-f> :NERDTreeToggle<CR>
nnoremap <s-F> :NERDTreeFind<CR>
nnoremap <s-Q> :bprevious<CR>
nnoremap <s-W> :bnext<CR>
" focus windows with arrow keys"
nnoremap <C-Left>  <C-w>h
nnoremap <C-Down>  <C-w>j
nnoremap <C-Up>    <C-w>k
nnoremap <C-Right> <C-w>l

" resize tabs with alt h j k l"
nnoremap <A-k> :resize +2 <CR>
nnoremap <A-j> :resize -2 <CR>
nnoremap <A-h> :vertical resize -2 <CR>
nnoremap <A-l> :vertical resize +2 <CR>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
nnoremap <F3> :set hlsearch!<CR>

au BufEnter,BufNew *.c nnoremap <silent> <s-Tab> :e %<.h<CR>
au BufEnter,BufNew *.h nnoremap <silent> <s-Tab> :e %<.c<CR>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap < <><left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

