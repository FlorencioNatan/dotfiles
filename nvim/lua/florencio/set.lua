-- Configurações genéricas
HOME = os.getenv("HOME")
vim.g.mapleader=" "

-- Configurações do tab
vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.expandtab=true
vim.opt.shiftwidth=4
vim.opt.smarttab = true
vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    command = "set expandtab tabstop=4 softtabstop=4 shiftwidth=4"
})
vim.api.nvim_create_autocmd("FileType", {
    pattern = "ruby",
    command = "set expandtab tabstop=2 softtabstop=2 shiftwidth=2"
})
vim.api.nvim_create_autocmd("FileType", {
    pattern = {"php", "json", "java", "javascript"},
    command = "set noexpandtab tabstop=4 softtabstop=4 shiftwidth=4"
})

-- Set tipos de arquivo javascript react
vim.api.nvim_create_autocmd(
    { "BufNewFile", "BufRead" },
    { pattern = { "*.js" }, command = "set filetype=javascriptreact" }
)

-- Exibe os caracteres em branco
vim.opt.list = true

-- Desabilita o linewrap
vim.opt.wrap = false

-- Confira o smartcase
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- configura undo dir
vim.opt.swapfile = false
vim.opt.undodir = HOME .. "/.config/nvim/undodir"
vim.opt.undofile = true

vim.opt.incsearch = true

-- Configura linha limite
vim.opt.colorcolumn="120"

-- Set line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Spell checking
vim.opt.spelllang="pt_br"

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "gitcommit", "gitrebase", "markdown" }, -- , "text"
    command = "setlocal spell",
})
vim.api.nvim_create_autocmd(
    { "BufRead", "BufNewFile" },
    { pattern = { "*.txt", "*.md", "*.tex" }, command = "setlocal spell" }
)

vim.g.completeopt=menu,menuone,noselect

-- configuring vimwiki
vim.g.vimwiki_list = {{syntax = 'markdown'}}

-- Snippets
vim.g.UltiSnipsExpandTrigger="<c-j>"
vim.g.UltiSnipsJumpForwardTrigger="<c-j>"
vim.g.UltiSnipsJumpBackwardTrigger="<c-b>"

-- PHP7
vim.g.ultisnips_php_scalar_types = 1

-- Godot
vim.g.godot_executable = HOME .. '/software/Godot/Godot_v3.3-stable_x11.64'

-- Configurando o preview do LaTeX
vim.g.livepreview_previewer = 'evince'

-- Configura o fzf
vim.g.LanguageClient_selectionUI = 'fzf'
