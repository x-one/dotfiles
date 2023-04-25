-- vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"
-- vim.opt.listchars:append "eol:↴"
vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#2e2f39 gui=nocombine]]

require("indent_blankline").setup {
    -- show_end_of_line = true,
    -- space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
    },
    show_current_context = false,
    show_current_context_start = false,
    indent_blankline_buftype_exclude = { "terminal", "nofile" },
    indent_blankline_filetype_exclude = {
        "help",
        "startify",
        "dashboard",
        "packer",
        "neogitstatus",
        "NvimTree",
        "Trouble",
    },
    indent_blankline_show_trailing_blankline_indent = false,
    indent_blankline_context_patterns = {
        "class",
        "return",
        "function",
        "method",
        "^if",
        "^while",
        "jsx_element",
        "^for",
        "^object",
        "^table",
        "block",
        "arguments",
        "if_statement",
        "else_clause",
        "jsx_element",
        "jsx_self_closing_element",
        "try_statement",
        "catch_clause",
        "import_statement",
        "operation_type",
    }
}
-- HACK: work-around for https://github.com/lukas-reineke/indent-blankline.nvim/issues/59
vim.wo.colorcolumn = "99999"
