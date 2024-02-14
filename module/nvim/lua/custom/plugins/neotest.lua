return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'haydenmeade/neotest-jest',
  },
  version = "3.4.7",
  config = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-jest' {
          jestCommand = 'yarn jest:coverage',
          jestConfigFile = 'jest.config.ts',
		--env = { CI = true },
          cwd = function(path)
            return vim.fn.getcwd()
          end,
        },
      },
    }
  end,
}
