-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Use a protected call so we don"t error out on first use
local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
    vim.print("ERROR", lazy)
    return
end

-- Start setup
lazy.setup({
    spec = {
        -- lazy
        { "kyazdani42/nvim-web-devicons", lazy = true },
        { "nvim-lua/plenary.nvim", lazy = true },
        { "xolox/vim-misc", lazy = true },

        -- colorscheme:
        { "2lx/lazylight", lazy = false },

        {
            "kyazdani42/nvim-tree.lua",
            lazy = false,
            dependencies = { "kyazdani42/nvim-web-devicons" },
        },
        { "nvim-telescope/telescope.nvim", branch = "0.1.x", lazy = false },
        { "nvim-lualine/lualine.nvim", lazy = false },
        { "ntpeters/vim-better-whitespace", lazy = false },
        { "preservim/nerdcommenter", lazy = false }, -- :help NERDCommenterFunctionalitySummary
        { "ap/vim-css-color", lazy = false },
        { "tpope/vim-surround", lazy = false }, -- :help surround
        { "tpope/vim-fugitive", lazy = false }, -- :G blame -
        { "airblade/vim-gitgutter", lazy = false },
        { "preservim/tagbar", lazy = false },

        -- specific filetypes
        { "neoclide/coc.nvim", branch = 'release', lazy = false  },
        {
            "xolox/vim-lua-ftplugin",
            lazy = false,
            dependencies = { "xolox/vim-misc" },
        },
        { "2lx/vim-luafmt", lazy = false  },
        { "MTDL9/vim-log-highlighting", lazy = false  },
        { "jackguo380/vim-lsp-cxx-highlight", lazy = false  },
        { "qnighy/lalrpop.vim", lazy = false  },
        { "clangd/coc-clangd", lazy = false  },
        { "nvim-lua/plenary.nvim", lazy = false },
        { "neovim/nvim-lspconfig", lazy = false },
        { "andrejlevkovitch/vim-lua-format", lazy = false },
        -- { "hrsh7th/nvim-cmp", opts = { sources = { { name = "html-css", option = {
        --     max_count = {}, -- not ready yet
        --     enable_on = { "html" }, -- set the file types you want the plugin to work on
        --     file_extensions = { "css", "sass", "less" }, -- set the local filetypes from which you want to derive classes
        --     style_sheets = {
        --         -- example of remote styles, only css no js for now
        --         "https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css",
        --         "https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css",
        --     },
        -- } } } } }, -- for nvim-html-css
        -- { "Jezda1337/nvim-html-css",
        --     dependencies = {
        --         "nvim-treesitter/nvim-treesitter",
        --         "nvim-lua/plenary.nvim"
        --     },
        --     config = function() require("html-css"):setup() end,
        -- }
    },
})
