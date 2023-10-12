return {
        'hrsh7th/nvim-cmp',
        dependencies = {
                "onsails/lspkind.nvim",
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-buffer",
                "hrsh7th/cmp-path",
                "hrsh7th/cmp-cmdline",
                "hrsh7th/cmp-vsnip",
                "hrsh7th/vim-vsnip"
        },
        config = function()
                local cmp = require'cmp'
                local lspkind = require'lspkind'
                cmp.setup({
                        snippet = {
                                expand = function(args)
                                        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
                                end,
                        },
                        formatting = {
                                format = lspkind.cmp_format({
                                        mode = 'symbol', -- show only symbol annotations
                                        maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
                                }),
                        },

                        sources = cmp.config.sources({
                                { name = 'path' },
                                { name = 'vsnip' },
                                { name = 'nvim_lsp' },
                                { name = 'buffer' },
                        }),
                        mapping = cmp.mapping.preset.insert({
                                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                                ['<C-Space>'] = cmp.mapping.complete(),
                                ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
                                ['<C-e>'] = cmp.mapping({
                                        i = cmp.mapping.abort(),
                                        c = cmp.mapping.close(),
                                }),
                                ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                        }),
                })

                -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
                cmp.setup.cmdline('/', {
                        sources = {
                                { name = 'buffer' }
                        }
                })

                -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
                cmp.setup.cmdline(':', {
                        sources = cmp.config.sources({
                                { name = 'path' }
                        }, {
                                { name = 'cmdline' }
                        })
                })
                local capabilities = require('cmp_nvim_lsp').default_capabilities()
                require('lspconfig')['pylsp'].setup {
                        capabilities = capabilities
                }
        end
}
