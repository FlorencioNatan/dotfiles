-- NERDTree

-- Toggle NERDTree
vim.api.nvim_set_keymap(
  "n",
  "<F2>",
  ":NERDTreeToggle<CR>",
  { noremap = false }
)

-- Abrir NERDTree no arquivo atual
vim.api.nvim_set_keymap(
  "n",
  "<F3>",
  ":NERDTreeFind<CR>",
  { noremap = false }
)
