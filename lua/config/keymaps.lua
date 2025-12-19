-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Delete sem poluir clipboard (usa black-hole register)
vim.keymap.set("n", "d", '"_d', { noremap = true, silent = true })
vim.keymap.set("n", "dd", '"_dd', { noremap = true, silent = true })
vim.keymap.set("n", "D", '"_D', { noremap = true, silent = true })
vim.keymap.set("x", "d", '"_d', { noremap = true, silent = true })

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")
