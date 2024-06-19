vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop =4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false

vim.opt.scrolloff = 8

vim.opt.termguicolors = true

vim.g.mapleader = " "

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Barbar commands
local map = vim.api.nvim_set_keymap
local opts = { noremap= true, silent = true }
-- Move to previous/next
map('n', '<Tab>', '<Cmd>BufferNext<CR>', opts)
map('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', opts)

-- Close current buffer
map('n', '<Leader>x', '<Cmd>BufferClose<CR>', opts)
