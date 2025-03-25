return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"BurntSushi/ripgrep",
	},
	config = function()
		require("telescope").setup{
      pickers = {
        find_files =  { theme = "ivy" },
        git_commits =  { theme = "ivy" },
        buffers =  { theme = "ivy" },
        lsp_dynamic_workspace_symbols =  { theme = "ivy" },
        live_grep =  { theme = "ivy" }
      }
    }
	end,
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "List current buffers" },
		{ "<leader>fs", "<cmd>Telescope lsp_dynamic_workspace_symbols <cr>", desc = "Search for symbols" },
		{ "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "List git commits" },
	},
}
