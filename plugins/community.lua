return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.gruvbox" },
  { import = "astrocommunity.colorscheme.tokyonight" },
  { import = "astrocommunity.indent.indent-tools-nvim" },
  { import = "astrocommunity.debugging.nvim-bqf" },
  -- { import = "astrocommunity.note-taking.obsidian-nvim" },
  { import = "astrocommunity.completion.copilot-lua" },
  { import = "astrocommunity.debugging.nvim-bqf" },
  { import = "astrocommunity.scrolling.mini-animate" },
  { import = "astrocommunity.indent.indent-tools-nvim" },
  { import = "astrocommunity.motion.harpoon" },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.code-runner.overseer-nvim" },
  {
    -- further customize the options set by the community
    "copilot.lua",
    opts = {
      suggestion = {
        keymap = {
          accept = "<C-f>",
          accept_word = false,
          accept_line = false,
          next = "<C-.>",
          prev = "<C-,>",
          dismiss = "<C-/>",
        },
      },
    },
  },
}
