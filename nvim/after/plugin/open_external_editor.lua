-- Abre o arquivo atual num editor externo(Gedit)
vim.api.nvim_set_keymap(
  "n",
  "<leader>o",
  ":!gedit %<CR>",
  { noremap = true }
)


