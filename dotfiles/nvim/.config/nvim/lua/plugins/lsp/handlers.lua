local lspconfig = require "lspconfig"
local capabilities = require "cmp_nvim_lsp".default_capabilities()

return {
    function(server_name)
        lspconfig[server_name].setup {
            capabilities = capabilities
        }
    end,

    ["lua_ls"] = function()
        lspconfig.lua_ls.setup {
            capabilities = capabilities,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim", "deez" }
                    }
                }
            },
        }
    end,

    ["clangd"] = function()
        lspconfig.clangd.setup {
            capabilities = capabilities,
            cmd = {"clangd", "--enable-config"},
        }
    end,


    -- Some stuff for which I have seperate plugins which handle setting up the lsp servers.
    ["rust_analyzer"] = function() end
}
