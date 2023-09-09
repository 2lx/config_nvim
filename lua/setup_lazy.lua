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
    },
})
