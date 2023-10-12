return { 
        "nvim-telescope/telescope.nvim", 
        dependencies = {
                "nvim-lua/plenary.nvim",
                "BurntSushi/ripgrep"
        }, 
        config = function()
                require('telescope').setup()
        end,
        keys = {
                { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
                { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
                { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "List current buffers" },
                { "<leader>fs", "<cmd>Telescope lsp_dynamic_workspace_symbols <cr>", desc = "Search for symbols" },
                { "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "List git commits" },
        }
}
