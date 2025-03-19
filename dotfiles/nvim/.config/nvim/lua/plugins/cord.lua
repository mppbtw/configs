return {
    'vyfor/cord.nvim',
    build = ':Cord update',
    config = function()
        require("cord").setup{
            editor = {
                tooltip = "Why are you hovering over this m8?"
            },
            text = {
                workspace = function(opts) return 'In ' .. opts.workspace end,
                viewing = function(opts) return 'Peeping at ' .. opts.filename end,
                editing = function(opts) return 'Hacking away on ' .. opts.filename end,
                file_browser = function(opts) return 'Browsing files in ' .. opts.name end,
                plugin_manager = function(opts) return 'Managing plugins in ' .. opts.name end,
                lsp = function(opts) return 'Configuring LSP in ' .. opts.name end,
                docs = function(opts) return 'Reading ' .. opts.name end,
                vcs = function(opts) return 'Committing changes in ' .. opts.name end,
                notes = function(opts) return 'Taking notes in ' .. opts.name end,
                debug = function(opts) return 'Debugging in ' .. opts.name end,
                test = function(opts) return 'Testing in ' .. opts.name end,
                diagnostics = function(opts) return 'Fixing problems in ' .. opts.name end,
                games = function(opts) return 'Playing ' .. opts.name end,
                terminal = function(opts) return 'Running commands in ' .. opts.name end,
                dashboard = 'Home',
            },
    }
  end
}
