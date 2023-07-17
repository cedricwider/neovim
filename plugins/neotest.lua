return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "haydenmeade/neotest-jest",
      "marilari88/neotest-vitest",
      "olimorris/neotest-rspec",
    },
    event = "User AstroFile",
    run = ":UpdateRemotePlugins",
    config = function()
      require("neotest").setup {
        adapters = {
          require "neotest-jest" {
            -- jest options
            jestCommand = "npm run test --",
            jestConfigFile = "jest.config.js",
            cwd = function(_) return vim.fn.getcwd() end,
          },
          require "neotest-vitest" {
            -- vitestCommand = "npm test --",
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
