return {
	"AckslD/nvim-neoclip.lua",
	lazy = false,
	dependencies = {
		{ "nvim-telescope/telescope.nvim" }
	},
	opts = {},
	keys = {
		{ "<leader>cc", "<cmd>Telescope neoclip<cr>", desc = "Neo[C]lip" }
	}
}
