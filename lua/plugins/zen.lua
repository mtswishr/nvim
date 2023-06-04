return {
        'folke/zen-mode.nvim',
        config = function()
                require('zen-mode').setup()
        end,
        keys = {
                {'<leader>z', '<cmd>ZenMode<cr>'}
        }
}

