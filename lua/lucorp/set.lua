-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- Theme configuration
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
