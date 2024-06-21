local M = {}
M.config_edit = function(config)
    local configs = {
        {"nvim", "nvim/.config/nvim/"},
        {"zsh", "zsh/.config/zsh/"},
        {"mpv", "mpv/.config/mpv/mpv.conf"},
        {"hyprland", "hypr/.config/hypr/hyprland.conf"},
        {"hyprpaper", "hypr/.config/hypr/hyprpaper.conf"},
        {"sway", "sway/.config/sway/config"},
        {"wofi", "wofi/.config/wofi"},
        {"alacritty", "alacritty/.config/alacritty/alacritty.toml"},
        {"swaync", "swaync/.config/swaync/config.json"}
    }

    for i=1, #configs do
        print(configs[i][1])
        if configs[i][1] == config then
            vim.cmd("Oil ~/configs/dotfiles/" .. configs[i][2])
        end
    end
end

return M
