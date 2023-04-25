require("x-one.packer")
require("x-one.remap")
require("x-one.set")

vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost packer.lua source <afile> | PackerSync
    augroup end
]])

local _augroup = vim.api.nvim_create_augroup
local _autocmd = vim.api.nvim_create_autocmd

-- Hightlight on Yank
_autocmd("TextYankPost", {
    group = _augroup("HighlightYank", {}),
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({
            higroup = "IncSearch",
            timeout = 40,
        })
    end,
})

-- Remove Trailing Whitespaces on Save
_autocmd({"BufWritePre"}, {
    group = _augroup("BufWrite", {}),
    pattern = "*",
    command = "%s/\\s\\+$//e",
})
