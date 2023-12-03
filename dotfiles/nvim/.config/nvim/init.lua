local load_colour = function(col)
    vim.cmd(":colorscheme " .. col)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

-- knee yo vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = require "plugins"
require("lazy").setup(plugins)

require("core")

load_colour("gruvbox")
