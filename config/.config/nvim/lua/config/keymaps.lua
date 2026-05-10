-- Modes :
-- -- "n": normal mode
-- -- "v": visual mode
-- -- "x": visual_block mode
-- -- "i": insert mode
-- -- "t": terminal mode
-- -- "c": command mode


vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")

vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", {noremap=true, silent=true})
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", {noremap=true, silent=true})

vim.keymap.set("v", "<", "<gv", {noremap=true, silent=true}) -- Right Indentation
vim.keymap.set("v", ">", ">gv", {noremap=true, silent=true}) -- Left Indentation

-- Save
vim.keymap.set("i", "<C-s>", "<esc>:w<cr>", {noremap=true, silent=true})
-- select all content
vim.keymap.set("n", "<C-a>", "ggVG", {noremap=true, silent=true})
