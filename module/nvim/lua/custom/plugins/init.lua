-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
vim.api.nvim_set_keymap("n", "<leader>y", '"+y', {})
vim.api.nvim_set_keymap("n", "<leader>p", '"+p', {})

vim.api.nvim_set_option("shiftwidth", 4)
vim.api.nvim_set_option("tabstop", 4)


return {}
