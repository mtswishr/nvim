return {
        'marko-cerovac/material.nvim',
        priority = 1000,
        config = function()
                require('material').setup({
                styles = { 
                        comments = {  italic = true  },
                        strings = {  bold = true  },
                        keywords = {  underline = true  },
                    },
                })
                contrast = {
                        terminal = false, -- Enable contrast for the built-in terminal
                        sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
                        floating_windows = false, -- Enable contrast for floating windows
                        cursor_line = false, -- Enable darker background for the cursor line
                        non_current_windows = false, -- Enable contrasted background for non-current windows
                        filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
            }
        end,
}
