-- FZF funcionalidade de Fuzzy search
vim.g.fzf_mru_relative = 1

-- Busca por nomes de arquivos

-- Recentes
vim.api.nvim_set_keymap(
  "n",
  "<leader><Enter>",
  ":FZFMru<cr>",
  { noremap = true }
)
-- Todos os arquivos
vim.api.nvim_set_keymap(
  "n",
  "<leader>f",
  ":Files<cr>",
  { noremap = true }
)
-- Todos os arquivos split vertical
vim.api.nvim_set_keymap(
  "n",
  "<leader>F",
  ":call fzf#run({'sink': 'e', 'right': '40%'})<cr>",
  { noremap = true }
)

-- Busca por conteúdo dos arquivos

-- Busca comum
vim.api.nvim_set_keymap(
  "n",
  "<leader>s",
  ":Rg<space>",
  { noremap = true }
)
-- Busca palavra Sobre o cursor
vim.api.nvim_set_keymap(
  "n",
  "<leader>S",
  [[:exec "Rg ".expand("<cword>")<cr>]],
  { noremap = true }
)
-- Busca pela seleção
vim.api.nvim_set_keymap(
  "v",
  "//",
  [["hy:exec "Rg ".escape('<C-R>h', "/\.*$^~[()")<cr>]],
  { noremap = true }
)

-- Busca por tags

-- No arquivo atual
vim.api.nvim_set_keymap(
  "n",
  "<leader>t",
  ":BTags<cr>",
  { noremap = true }
)
-- Busca a pavra sob o cursor no arquivo atual
vim.api.nvim_set_keymap(
  "n",
  "<leader>T",
  ":BTags <C-R><C-W><cr>",
  { noremap = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>R",
  ":Tags<cr>",
  { noremap = true }
)

-- Busca nos buffers abertos(enter direto para o ultimo buffer)
vim.api.nvim_set_keymap(
  "n",
  "<leader><tab>",
  ":Buffers<cr>",
  { noremap = true }
)

