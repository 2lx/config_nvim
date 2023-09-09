vim.g.mapleader = ","

require('setup_lazy')
require('autocmds')
require('keymaps')
require('options')

-- setup plugins
local plug_path = vim.fn.stdpath('config') .. '/lua/plugins'
for _, file in ipairs(vim.fn.readdir(plug_path, [[v:val =~ '\.lua$']])) do
    require('plugins.' .. file:gsub('%.lua$', ''))
end

-- colorscheme ayu
-- colorscheme onehalflight
vim.cmd("colorscheme lazylight")
