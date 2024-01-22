local plugins = {
    "colorschemes",
    "libraries",
    "telescope",
    "whichkey",
    "autopairs",
    "lsp",
    "rust_tools",
    "oil",
    "gitsigns",
    "guess_indent",
    "transparent",
    "treesitter",
    "lualine",
    "harpoon",
}

-- Transform the names of modules into their return values
local function load(name)
    return require ("plugins." .. name)
end

local configs = {}

for _, name in ipairs(plugins) do
    table.insert(configs, load(name))
end

return configs
