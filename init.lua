require('plugins')
require('functions')
require('settings')
require('mappings')

-- %%%%%%%%%%%%%%%%%
-- 自定义字段
-- %%%%%%%%%%%%%%%%%

-- rust配置
require('rust-tools').setup({})

-- 主题
vim.cmd [[
  colorscheme gruvbox
  set background=dark
]]
vim.api.nvim_set_option('tabpagemax', 8)

-- 键位映射
vim.cmd [[
  nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
  inoremap jk <ESC>
]]



local g = vim.g
g.netrw_banner = 1
g.netrw_winsize = '80%'
g.netrw_browse_split = 4
g.netrw_altv = 1
g.netrw_liststyle = 3
