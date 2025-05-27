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
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        event = "VeryLazy",
        config = function()
            require "catppuccin".setup {
                disable_background = false
            }
        end
    },
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        event = "VeryLazy",
        config = function()
            require('kanagawa').setup({
                compile = false,             -- enable compiling the colorscheme
                undercurl = true,            -- enable undercurls
                commentStyle = { italic = true },
                functionStyle = {},
                keywordStyle = { italic = true},
                statementStyle = { bold = true },
                typeStyle = {},
                transparent = true,         -- do not set background color
                dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
                terminalColors = true,       -- define vim.g.terminal_color_{0,17}
                theme = "dragon",              -- Load "wave" theme
            })
        end
    },
}
