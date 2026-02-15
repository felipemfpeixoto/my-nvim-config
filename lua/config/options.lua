-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.shell = "/usr/bin/zsh" -- ajuste se seu zsh estiver em outro path
vim.opt.shellcmdflag = "-lc"

-- Scroll fluido
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Wrap inteligente
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.breakindentopt = "shift:2"
vim.opt.showbreak = "↪ "
