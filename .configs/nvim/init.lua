--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- Author: rx-py
-- INIT FILE

-- Variables
opt = vim.opt
g = vim.g
kmap = vim.keymap
cmd = vim.cmd

vim.api.nvim_win_set_option(0, 'winblend', 80) -- Adjust the value (0-100) for desired transparency

-- Imports
require("core.plugins")             -- Plugins
require("core.settings")            -- Editor settings
require("core.setups")              -- Setup of plugins
require("core.mappings")            -- Mappings
require("core.scripts")             -- Scripts

require("plugins.mason")            -- Mason LSP & DAP servers
require("plugins.lsp-config-setup") -- LSPconfig setup
require("plugins.dap")              -- Debug Adapter Protocol
require("plugins.nvim-cmp")         -- Autocompletion
require("plugins.treesitter")       -- Treesitter syntax highlighting
require("plugins.gitsigns-config")  -- Gitsigns mappings
require('ayu').colorscheme()        -- AYU-dark colorscheme
require("mason").setup()
require("mason-lspconfig").setup()
require("lspconfig").lua_ls.setup {}
require("lspconfig").rust_analyzer.setup {}
