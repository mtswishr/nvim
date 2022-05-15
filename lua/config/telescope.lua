local actions = require('telescope.actions')

require('telescope').setup {
	defaults = {
		mappings = {
			i = {
				["<C-h>"] = "which_key"
			}
		}
	},
	pickers = {
	},
	extensions = {
	}
}

vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>',{})
