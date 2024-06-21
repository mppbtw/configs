local function map(lhs, rhs, mode, opts)
    opts = opts or {silent = true, noremap = true}
    mode = mode or "n"
    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end

vim.g.mapleader = " "
-- These are ALL of the keymaps I use, even
-- plugin ones because I hate ambiguity as to
-- where the config defines stuff.

map("<Leader>n", "<cmd>:nohl<CR>")

-- File navigation
map("-", "<cmd>:Oil<CR>")

-- Used for writing multiple line wraps
map("j", "gj")
map("k", "gk")
map("0", "g0")
map("$", "g$")

-- baked beans guy plugin
map("<Leader>ff", "<cmd>:Telescope find_files<CR>") --find files
map("<Leader>fg", "<cmd>:Telescope live_grep<CR>") --find grep
map("<Leader>fb", "<cmd>:Telescope buffers<CR>") --find buffers
map("<Leader>ft", "<cmd>:Telescope treesitter<CR>") --find w/ treesitter
map("<Leader>fh", "<cmd>:Telescope help_tags<CR>") --find help
map("<Leader>fc", "<cmd>:Telescope menu config_edit<CR>") --find config

-- This is here just so that nvim-cmp can handle command completions
map("<Tab>", "", "c")

-- Switching split focus
map("<C-h>", "<C-w>h")
map("<C-j>", "<C-w>j")
map("<C-k>", "<C-w>k")
map("<C-l>", "<C-w>l")

-- Obsidian notes stuff
map("<Leader>of", "<cmd>:ObsidianFollowLink<CR>")
map("<Leader>ol", "<cmd>:ObsidianLink<CR>")
map("<Leader>on", "<cmd>:ObsidianNew<CR>")
map("<Leader>fo", "<cmd>:ObsidianQuickSwitch<CR>")
