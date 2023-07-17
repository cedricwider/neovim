return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    local formatter = null_ls.builtins.formatting
    local diagnoser = null_ls.builtins.diagnostics
    -- local conditional = function(fn)
    --   local utils = require("null-ls.utils").make_conditional_utils()
    --   return fn(utils)
    -- end

    config.sources = {
      -- Check supported formatters and linters
      -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
      -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
      -- Diagnostic sources
      diagnoser.eslint_d,
      diagnoser.rubocop.with {
        command = "bundle",
        args = vim.list_extend({ "exec", "rubocop" }, diagnoser.rubocop._opts.args),
      },

      -- Formatter sources
      formatter.stylua,
      formatter.prettierd,
      formatter.eslint_d,
      formatter.rubocop.with {
        command = "bundle",
        args = vim.list_extend({ "exec", "rubocop" }, formatter.rubocop._opts.args),
      },
    }

    return config
  end,
}
