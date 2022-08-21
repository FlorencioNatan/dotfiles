-- Step over
vim.api.nvim_set_keymap(
  "n",
  "<F8>",
  "<Plug>VimspectorStepOver",
  { noremap = false }
)

-- Abrir NERDTree no arquivo atual
vim.api.nvim_set_keymap(
  "n",
  "<F7>",
  "<Plug>VimspectorStepInto",
  { noremap = false }
)

-- Step Out
vim.api.nvim_set_keymap(
  "n",
  "<shift><F7>",
  "<Plug>VimspectorStepOut",
  { noremap = false }
)

-- Abrir NERDTree no arquivo atual
vim.api.nvim_set_keymap(
  "n",
  "<F5>",
  "<Plug>VimspectorContinue",
  { noremap = false }
)

-- Step Out
vim.api.nvim_set_keymap(
  "n",
  "<shift><F5>",
  "<Plug>VimspectorStop",
  { noremap = false }
)

-- Abrir NERDTree no arquivo atual
vim.api.nvim_set_keymap(
  "n",
  "<F9>",
  "<Plug>VimspectorToggleBreakpoint",
  { noremap = false }
)

