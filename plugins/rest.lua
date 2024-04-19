return {
  "rest-nvim/rest.nvim",
  dependencies = { { "nvim-lua/plenary.nvim" } },
  config = function()
    require("rest-nvim").setup {
      --- https://github.com/rest-nvim/rest.nvim#settings
    }
  end,
}
