return {
    {
        "williamboman/mason-lspconfig.nvim",
        config = function() end
    },
    {
        "neovim/nvim-lspconfig",
        config = function() end
    },
    {
        "williamboman/mason.nvim",
        config = function()
            require "mason".setup {}
            local mason_lspconfig = require "mason-lspconfig"
            local handlers = require "plugins.lsp.handlers"
            mason_lspconfig.setup {
                ensure_installed = { "lua_ls", "rust_analyzer" }
            }
        end
    },
    require("plugins.lsp.cmp")
}
