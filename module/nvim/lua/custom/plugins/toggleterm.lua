function _G.set_terminal_keymaps()
	local opts = {buffer = 0}
	vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
	vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
	vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
	vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
	vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
	vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
	vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

return {
	'akinsho/toggleterm.nvim',
	version = "*",
	opts = {
		start_in_insert = true,
	},
	keys = {
		{ "<leader>gg", "<cmd>TermExec direction=float dir=git_dir cmd=lazygit name=LazyGit<cr>", desc = "[T]erminal Lazy[G]it" },
		{ "<leader>tt", "<cmd>ToggleTerm dir=git_dir name=Scratch<cr>", desc = "[T]erminal Scra[t]ch" },
		{ "<leader>tf", "<cmd>ToggleTerm direction=float dir=git_dir name=Float<cr>", desc = "[T]erminal [F]loat" },
		{ "<leader>tga", "<cmd>TermExec direction=float dir=git_dir cmd='yarn graphql:all' name='GraphQL CodeGen'<cr>", desc = "[T]erminal [G]r[A]phQL Codegen"}
	}
}
