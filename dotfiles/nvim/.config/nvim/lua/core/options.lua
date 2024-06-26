local set = vim.opt

vim.g.zig_fmt_parse_errors=0

set.so = 999
set.guicursor = ""
set.number = true
set.relativenumber = true
set.ignorecase = true
set.tabstop = 4
set.softtabstop = 4
set.expandtab = true
set.shiftwidth = 4
set.signcolumn = "yes"
set.cmdheight = 2
set.smartcase = true
set.wrap = true
set.smartindent = true
set.conceallevel = 0
set.swapfile = false
set.foldenable = false
set.cursorline = false
set.list = false
set.conceallevel = 2

set.listchars = {
    space = " ",
    trail = "·",
    extends = "◀",
    precedes = "▶",
}

set.fillchars = {
    eob = " ",
    stl = " ",
    wbr = "-",
    stlnc = " ",
}
