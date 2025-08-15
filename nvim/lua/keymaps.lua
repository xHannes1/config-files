vim.g.mapleader = ','

-- auto complete brackets
vim.keymap.set("i", "(", "()<Left>", { noremap = true })
vim.keymap.set("i", "[", "[]<Left>", { noremap = true })
vim.keymap.set("i", "{", "{}<Left>", { noremap = true })
vim.keymap.set("i", "<", "<><Left>", { noremap = true })

vim.keymap.set("n", "<C-s>", ":wa<CR>", { noremap = true, silent = true, desc="Save all"})
vim.keymap.set("i", "<C-s>", "<ESC>:wa<CR>", { noremap = true, silent = true, desc="Save all"})

vim.keymap.set("n", "<C-f>", ":NvimTreeToggle<CR>", { noremap = true, silent = true, desc="Toggle file explorer"})
vim.keymap.set("i", "<C-f>", "<ESC>:NvimTreeToggle<CR>", { noremap = true, silent = true, desc="Toggle file explorer"})

vim.keymap.set("n", "<C-w>", ":split<CR>", { noremap = true, silent = true, desc="Split"})
vim.keymap.set("i", "<C-w>", "<ESC>:split<CR>", { noremap = true, silent = true, desc="Split"})

vim.keymap.set("n", "<C-d>", ":vsplit<CR>", { noremap = true, silent = true, desc="Split vertical"})
vim.keymap.set("i", "<C-d>", "<ESC>:vsplit<CR>", { noremap = true, silent = true, desc="Split vertical"})

vim.keymap.set("n", "<C-b>", ":wa<CR> :! make build && make run<CR>", { noremap = true, silent = true, desc="make"})
vim.keymap.set("i", "<C-b>", "<ESC>:wa<CR> :! make build && make run<CR>", { noremap = true, silent = true, desc="make"})

vim.keymap.set("n", "<C-s>", ":mksession! s.vim<CR>", { noremap = true, silent = true, desc="make"})
vim.keymap.set("i", "<C-s>", "<ESC>:mksession! s.vim<CR>", { noremap = true, silent = true, desc="make"})
