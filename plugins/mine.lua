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
    "TimUntersberger/neogit",
    event = "User AstroFile",
    config = function() require("neogit").setup() end,
  },
  {
    "mattn/emmet-vim",
    event = "User AstroFile",
  },
  {
    "microsoft/vscode-js-debug",
    event = "User AstroFile",
    opt = true,
    run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
  },
  {
    "mxsdev/nvim-dap-vscode-js",
    event = "User AstroFile",
    requires = { "mfussenegger/nvim-dap" },
    config = function()
      require("dap-vscode-js").setup {
        debugger_path = os.getenv "HOME" .. "/.local/share/nvim/lazy/vscode-js-debug",
        adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" },
      }
    end,
  },
  {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function() require("trouble").setup() end,
  },
}
