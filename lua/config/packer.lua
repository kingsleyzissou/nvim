-- Only resettingsqsettingsusettingsired if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

-- packer
vim.keymap.set('n', '<leader>pi', require('packer').install, { desc = 'Packer Install' })
vim.keymap.set('n', '<leader>pc', require('packer').clean, { desc = 'Packer Clean' })
vim.keymap.set('n', '<leader>ps', require('packer').sync, { desc = 'Packer Sync' })
vim.keymap.set('n', '<leader>pu', require('packer').update, { desc = 'Packer Update' })

return require('packer').startup(function()
    -- Packer plugin manager
    use('wbthomason/packer.nvim')

    -- Dashboard theme
    use('goolord/alpha-nvim')

    -- color schemes
    use('ntk148v/vim-horizon')
    use('folke/tokyonight.nvim')

    -- highlighting
    use('RRethy/vim-illuminate')

    -- Some vim utilities
    use('folke/neodev.nvim')
    use('nvim-lua/plenary.nvim')
    use('tami5/sqlite.lua')
    use('tpope/vim-commentary')
    use('tpope/vim-endwise')
    use('kylechui/nvim-surround')
    use('windwp/nvim-autopairs')
    use('folke/zen-mode.nvim')
    use('folke/which-key.nvim')
    use('kikito/inspect.lua') -- I think this is a dependency
    use('monaqa/dial.nvim')
    use('gaborvecsei/memento.nvim')

    -- telescope
    use('nvim-telescope/telescope.nvim')
    use('nvim-telescope/telescope-symbols.nvim')
    use('nvim-telescope/telescope-frecency.nvim')
    use('ThePrimeagen/harpoon')

    -- trouble
    use('folke/trouble.nvim')
    use('folke/todo-comments.nvim')

    -- caching
    use('lewis6991/impatient.nvim')

    -- notify
    use('rcarriga/nvim-notify')

    -- git plugins
    use('tpope/vim-fugitive')
    use('lewis6991/gitsigns.nvim')
    use('kdheepak/lazygit.nvim')
    use('akinsho/git-conflict.nvim')

    -- treesitter
    use('nvim-treesitter/nvim-treesitter')

    -- icons
    use('kyazdani42/nvim-web-devicons')

    -- nvim tree
    use('kyazdani42/nvim-tree.lua')

    -- vim-go
    use({
        'fatih/vim-go',
        run = ':GoUpdateBinaries',
    })

    -- lualine
    use('nvim-lualine/lualine.nvim')

    -- undo tree
    use('mbbill/undotree')

    -- -- lsp stuff
    use('neovim/nvim-lspconfig')
    use('williamboman/mason.nvim')
    use('williamboman/mason-lspconfig.nvim')
    use('jose-elias-alvarez/null-ls.nvim')
    use('onsails/lspkind-nvim')
    use('simrat39/symbols-outline.nvim')

    -- progress tracker for lsp server
    use('j-hui/fidget.nvim')

    --completion
    use('christianchiarulli/nvim-cmp')
    use('hrsh7th/cmp-path')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-emoji')
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-nvim-lua')
    use('saadparwaiz1/cmp_luasnip')
    use('github/copilot.vim')
    use({
        'tzachar/cmp-tabnine',
        run = './install.sh',
    })

    -- snippets
    use('L3MON4D3/LuaSnip')
    use('rafamadriz/friendly-snippets')

    -- formatting
    use('mhartington/formatter.nvim')

    -- toggle term
    use('akinsho/toggleterm.nvim')
    use('is0n/jaq-nvim')

    -- markdown
    use('ellisonleao/glow.nvim') -- keep this because opens in nvim
    use('iamcco/markdown-preview.nvim')

    -- browse
    use('lalitmee/browse.nvim')

    -- windowing
    use('moll/vim-bbye')

    -- rest
    use('rest-nvim/rest.nvim')
end)