vim.g.mapleader = " "

local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Ref: https://neovim.io/doc/user/intro.html#keycodes

-- NOP
map("n", "<SPACE>", "<NOP>")
map("n", "Q", "<NOP>")
map("n", "<Up>", "<NOP>")
map("n", "<Down>", "<NOP>")
map("n", "<Left>", "<NOP>")
map("n", "<Right>", "<NOP>")

-- Pane navigation
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

vim.keymap.set("n", "<C-v>", ":vsplit<CR>")
vim.keymap.set("n", "<C-x>", ":split<CR>")

