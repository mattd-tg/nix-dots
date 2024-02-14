return {
  'David-Kunz/jester',
  opts = {
    cmd = 'yarn jest:ci $file',
  },
  keys = {
    {
      '<leader>jf',
      "<cmd>lua require('jester').run_file()<cr>",
      desc = '[T]est Jest Current [F]ile',
    },
    {
      '<leader>jl',
      "<cmd>lua require('jester').run_last()<cr>",
      desc = '[T]est Jest Run [L]ast',
    },
  },
}
