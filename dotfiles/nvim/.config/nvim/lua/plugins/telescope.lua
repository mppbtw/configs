return {
    {"octarect/telescope-menu.nvim"},
    {"nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require "telescope".setup {
            defaults = {
                mappings = {
                    i = {
                        ["<C-h>"] = "which_key",
                        ["-"] = require "telescope.actions".close,
                    }
                }
            },
            pickers = {
                -- Default configuration for builtin pickers goes here:
                -- picker_name = {
                --   picker_config_key = value,
                --   ...
                -- }
                -- Now the picker_config_key will be applied every time you call this
                -- builtin picker
            },
            extensions = {
                menu = {
                    config_edit = {
                        items = {
                            {"nvim", 'lua require("core.scripts").config_edit("nvim")'},
                            {"alacritty", 'lua require("core.scripts").config_edit("alacritty")'},
                            {"sway", 'lua require("core.scripts").config_edit("sway")'},
                            {"wofi", 'lua require("core.scripts").config_edit("wofi")'},
                            {"mpv", 'lua require("core.scripts").config_edit("mpv")'},
                            {"hyprland", 'lua require("core.scripts").config_edit("hyprland")'},
                            {"hyprpaper", 'lua require("core.scripts").config_edit("hyprpaper")'},
                            {"zsh", 'lua require("core.scripts").config_edit("zsh")'},
                            {"swaync", 'lua require("core.scripts").config_edit("swaync")'}
                        }
                    }
                }
            }
        }
        require("telescope").load_extension("menu")
    end
    }
}
