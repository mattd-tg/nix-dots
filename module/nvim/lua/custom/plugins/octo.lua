return {
	'pwntester/octo.nvim',
	lazy = false,
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-telescope/telescope.nvim',
		'nvim-tree/nvim-web-devicons',
	},
	config = function()
		require "octo".setup()
	end,
	keys = {
		{ "<leader>or", "<cmd>Octo repo list<cr>", desc = "[O]cto [R]epos List" },
		{ "<leader>oap", "<cmd>Octo pr list<cr>", desc = "[O]cto [A]ll [P]Rs" },
		{ "<leader>omp", "<cmd>Octo pr list createdBy=@me<cr>", desc = "[O]cto [M]y [P]Rs" }
	}
}
