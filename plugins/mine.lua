return {
  { "ThePrimeagen/harpoon" },
  {
    "vimwiki/vimwiki",
    event = "UIEnter",
  },
  {
    "kylechui/nvim-surround",
    event = "User AstroFile",
    config = function() require("nvim-surround").setup() end,
  },
  {
    "phaazon/hop.nvim",
    event = "User AstroFile",
    config = function() require("hop").setup() end,
  },
  {
    "mattn/emmet-vim",
    event = "User AstroFile",
  },
  { "microsoft/vscode-js-debug", opt = true, run = "npm install --legacy-peer-deps && npm run compile" },
  {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function() require("trouble").setup() end,
  },
}
