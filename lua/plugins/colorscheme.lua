return {
        'marko-cerovac/material.nvim',
        config = function()
                require('material').setup({
                        contrast = {
                                terminal = false, -- Enable contrast for the built-in terminal
                                sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
                                floating_windows = false, -- Enable contrast for floating windows
                                cursor_line = true, -- Enable darker background for the cursor line
                                non_current_windows = false, -- Enable contrasted background for non-current windows
                                filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
            },
            styles = { -- Give comments style such as bold, italic, underline etc.
                comments = {  italic = true  },
                strings = {  italic = true  },
                keywords = {  italic = true  },
            },

            plugins = {},
            disable = {
                colored_cursor = true, -- Disable the colored cursor
                borders = true, -- Disable borders between verticaly split windows
                background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
                term_colors = false, -- Prevent the theme from setting terminal colors
                eob_lines = false -- Hide the end-of-buffer lines
            },

            high_visibility = {
                lighter = false, -- Enable higher contrast text for lighter style
                darker = false -- Enable higher contrast text for darker style
            },

            lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )
            async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)
            custom_colors = nil, -- If you want to override the default colors, set this to a function
            custom_highlights = {}, -- Overwrite highlights with your own
        })
        vim.g.material_style = "darker"
        end
}
