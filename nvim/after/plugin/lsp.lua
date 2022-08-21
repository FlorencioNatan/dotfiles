-- Configura o LSP Nativo do Neovim
-- Linguagens
require'lspconfig'.intelephense.setup{}
-- require'lspconfig'.eslint.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.jdtls.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.gdscript.setup{capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())}

