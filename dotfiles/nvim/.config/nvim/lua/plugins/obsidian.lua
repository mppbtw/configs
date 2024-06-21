return {
    "epwalsh/obsidian.nvim",
    config = function()
       require("obsidian").setup {
           workspaces = {
               {
                   name = "work",
                   path = "~/vaults/work",
               }
           },
           mappings = {
               -- All of these mappings are in the remaps.lua file in core
           }

       }
    end
}
