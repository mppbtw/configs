return {
    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        event = "VeryLazy",
        config = function()
            require "gruvbox".setup {
                disable_background = true
            }
        end
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        event = "VeryLazy",
        config = function()
            require "rose-pine".setup {
                disable_background = true
            }
        end
    },
}
