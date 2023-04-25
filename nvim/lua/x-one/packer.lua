-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup({function(use)
    -- Packer can manage itself
    use({ 'wbthomason/packer.nvim' })

    use({
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = {'nvim-lua/plenary.nvim'}
    })
    use({"nvim-telescope/telescope-file-browser.nvim"})

    use({ 'lukas-reineke/indent-blankline.nvim' })
    use({
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons'}
    })
    -- use({'nvim-lua/lsp-status.nvim'})
    use({
        'akinsho/bufferline.nvim',
        tag = "v3.*",
        requires = {'kyazdani42/nvim-web-devicons'}
    })

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })
    use({ 'Mofiqul/dracula.nvim' })

    use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
    use({ 'nvim-treesitter/playground' })
    use({ 'ThePrimeagen/harpoon' })
    use({ 'mbbill/undotree' })
    use({ 'tpope/vim-fugitive' })

    use({
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    })
    use({ 'JoosepAlviste/nvim-ts-context-commentstring' })
    use({ 'mg979/vim-visual-multi' })
    -- use({ 'tpope/vim-surround' })
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })

    use({
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    })

    use({
        'aymericbeaumet/vim-symlink',
        requires = {'moll/vim-bbye'}
    })

    use({ 'lewis6991/gitsigns.nvim' })

    use({ 'lambdalisue/suda.vim' })
end,

config = {
    display = {
        open_fn = function()
            return require('packer.util').float({ border = 'single' })
        end
    }
}})
