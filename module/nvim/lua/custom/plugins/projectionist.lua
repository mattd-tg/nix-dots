return {
	"tpope/vim-projectionist",
	lazy = false,
	config = function() 
		-- require "projectionist".setup()
	end,
	keys = {
		{
			"<leader>Fp", "<cmd>:A<cr>", desc="[F]ile [P]rojectionist"
		}
	}
}
