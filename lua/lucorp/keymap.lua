--local builtin = require('telescope.builtin')
local map = vim.keymap.set
local set = vim.opt
local defaults = { noremap = true, silent = true }

-- Saving/quitting active window
map('n', '<C-s>', ':wq<CR>')

-- Navigation between windows
map("n", "<C-Left>", "<C-w>h")
map("n", "<C-Down>", "<C-w>j")
map("n", "<C-Up>", "<C-w>k")
map("n", "<C-Right>", "<C-w>l")

-- Window splitting and navigation
map("n", "C-d", "vsplit | endit C")
