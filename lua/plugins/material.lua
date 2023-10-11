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
        end,
}
