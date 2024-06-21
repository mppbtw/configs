return {
    "epwalsh/obsidian.nvim",
    config = function()
        local obsidian = require("obsidian")
        obsidian.setup {
            workspaces = {
                {
                    name = "notes",
                    path = "~/notes",
                }
            },
            mappings = {
                -- All of these mappings are in the remaps.lua file in core
            },

            note_id_func = function(title)
                local suffix = ""
                if title ~= nil then
                    -- If title is given, transform it into valid file name.
                    suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
                else
                    -- If title is nil, just add 4 random uppercase letters to the suffix.
                    for _ = 1, 4 do
                        suffix = suffix .. string.char(math.random(65, 90))
                    end
                end
                return tostring(os.time()) .. "-" .. suffix
            end,
        }
    end
}
