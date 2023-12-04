local function map(lhs, rhs, mode, opts)
    opts = opts or {silent = true, noremap = true}
    mode = mode or "n"
    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end

vim.g.mapleader = " "

-- NOTE: These are ALL of the keymaps I use, even
-- plugin ones because I hate ambiguity as to
-- where the config defines stuff.

map("<Leader>q", "<cmd>:q!<CR>")
map("<Leader>wq", "<cmd>:wq<CR>")
map("<Leader>n", "<cmd>:nohl<CR>")
map("<Leader>w", "<cmd>:w")

map("-", "<cmd>:Oil<CR>")

-- Used for writing
map("j", "gj")
map("k", "gk")
map("0", "g0")
map("$", "g$")

-- baked beans guy plugin
map("<Leader>ff", "<cmd>:Telescope find_files<CR>")
map("<Leader>fg", "<cmd>:Telescope live_grep<CR>")
map("<Leader>fb", "<cmd>:Telescope buffers<CR>")
map("<Leader>ft", "<cmd>:Telescope treesitter<CR>")

-- This is here just so that nvim-cmp can handle command completions
map("<Tab>", "", "c")
