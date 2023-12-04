-- I like hoarding colorschemes and lazy loading them here

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
    {
        "neanias/everforest-nvim",
        name = "everforest",
        event = "VeryLazy",
        config = function()
            require "rose-pine".setup {
                disable_background = true
            }
        end
    }
}
