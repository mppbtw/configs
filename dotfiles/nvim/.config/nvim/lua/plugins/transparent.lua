return {
    "xiyaowong/transparent.nvim",
    config = function()
    require "transparent".setup {
        groups = {
            'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
            'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
            'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
            'SignColumn', 'CursorLine', 'CursorLineNr',
            'EndOfBuffer',
        },
        extra_groups = {},
        exclude_groups = {},
    }
    end
}
