return {
  'andythigpen/nvim-coverage',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    auto_reload = true,
    lang = {
      javascript = {
        coverage_file = 'coverage/jest/lcov.info',
      },
      typescript = {
        coverage_file = 'coverage/jest/lcov.info',
      },
      typescriptreact = {
        coverage_file = 'coverage/jest/lcov.info',
      },
    },
  },
  keys = {
    { '<leader>jc', '<cmd>Coverage<cr>', desc = '[J]est [C]overage' },
  },
}
