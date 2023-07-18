return {
  {
    "kelly-lin/ranger.nvim",
    event = "User AstroFile",
    config = function()
      require("ranger-nvim").setup {
        keybinds = {
          ["C-v"] = require("ranger-nvim").OPEN_MODE.vsplit,
          ["C-x"] = require("ranger-nvim").OPEN_MODE.split,
          ["C-t"] = require("ranger-nvim").OPEN_MODE.tabedit,
          ["C-r"] = require("ranger-nvim").OPEN_MODE.rifle,
        },
      }
    end,
  },
}
