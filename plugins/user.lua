return {
  {
    "renerocksai/telekasten.nvim",
    event = "CmdlineEnter",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "renerocksai/calendar-vim",
      "nvim-telescope/telescope-media-files.nvim",
    },
    config = function()
      require("telekasten").setup {
        home = vim.fn.expand "~/work/notes/",
      }
    end,
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
  { "sindrets/diffview.nvim" },
  {
    "TimUntersberger/neogit",
    requires = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
    },
    event = "User AstroFile",
    config = function()
      require("neogit").setup {
        disable_commit_confirmation = true,
        integrations = {
          diffview = true,
        },
        commit_popup = {
          kind = "floating",
        },
      }
    end,
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
