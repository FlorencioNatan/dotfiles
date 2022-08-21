-- Configura a lightline
vim.g.lightline = {
      active = {
        left = { { 'mode', 'paste' },
                  { 'gitbranch', 'readonly', 'filename', 'modified' } }
      },
      component_function = {
        gitbranch = 'FugitiveHead'
      },
      colorscheme = 'onedark',
      separator = {left = "", right = ''},
      subseparator = {left = "", right = ''},
      branch = '',
      readonly = '',
      linecolumn = '☰',
}
