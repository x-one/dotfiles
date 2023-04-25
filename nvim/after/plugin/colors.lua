-- function ColorMyPencils(color)
    require('rose-pine').setup({
        groups = {
            background = '#1e1f29',
        }
    })

    color = "rose-pine"
    -- color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- end

-- ColorMyPencils()
-- vim.api.nvim_create_user_command("ColorMyPencils", ColorMyPencils, {})
