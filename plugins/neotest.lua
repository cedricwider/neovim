return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "haydenmeade/neotest-jest",
      "olimorris/neotest-rspec",
    },
    event = "User AstroFile",
    run = ":UpdateRemotePlugins",
    config = function()
      require("neotest").setup {
        adapters = {
          require "neotest-jest" {
            -- jest options
            jestCommand = "./node_modules/.bin/jest",
            jestConfigFile = "jest.config.js",
            env = { CI = true },
            cwd = function(_) return vim.fn.getcwd() end,
          },
          require "neotest-rspec" {
            rspec_cmd = function()
              return vim.tbl_flatten {
                "bundle",
                "exec",
                "rspec",
              }
            end,
          },
        },
      }
    end,
  },
}
