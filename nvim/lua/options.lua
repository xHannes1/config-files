vim.g.maplocalleader = ","
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = false
vim.opt.smartcase = false
vim.opt.hlsearch = false
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.clipboard:append("unnamedplus")
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

vim.opt.wrap = true
vim.opt.termguicolors = false
vim.opt.background = dark

vim.cmd.colorscheme("wal")

vim.api.nvim_create_autocmd({ "BufEnter", "BufNew" }, {
  pattern = "*.c",
  callback = function()
    vim.keymap.set("n", "<S-Tab>", ":e %<.h<CR>", { silent = true, buffer = true, noremap = true })
  end
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufNew" }, {
  pattern = "*.h",
  callback = function()
    vim.keymap.set("n", "<S-Tab>", ":e %<.c<CR>", { silent = true, buffer = true, noremap = true })
  end
})
