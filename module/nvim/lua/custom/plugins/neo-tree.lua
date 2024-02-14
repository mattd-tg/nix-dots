return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        hijack_netrw_behavior = 'open_default',
        follow_current_file = { enabled = true },
        filtered_items = {
          hide_dotfiles = false,
        },
      },
    }
  end,
  keys = {
    { '<leader>b', '<cmd>Neotree toggle<cr>', desc = 'File Explorer' },
  },
}
