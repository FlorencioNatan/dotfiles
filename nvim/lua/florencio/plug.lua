-- Plugins
-- Alguns pl estão comentados porque não costumo usá-los sempre e não quero que eles sejam carregados sempre
vim.cmd([[
"Plugins usando Plug
call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'pbogut/fzf-mru.vim'
Plug 'SirVer/ultisnips'
Plug 'phux/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'joshdick/onedark.vim'
Plug 'vimwiki/vimwiki'
" Plug 'xuhdev/vim-latex-live-preview'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'puremourning/vimspector'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/nvim-treesitter-context'
" Plug 'habamax/vim-godot'
" Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'
" Plug 'neoclide/vim-jsx-improve'
call plug#end()
]])
