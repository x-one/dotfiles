vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        separator_style = "slant",
        offsets = {
            {
                filetype = "undotree",
                text = "UndoTree",
                padding = 1
            }
        },
        always_show_bufferline = false,
    }
}
