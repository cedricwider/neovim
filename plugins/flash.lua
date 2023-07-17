return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      char = {
        enabled = true,
        -- when to hide flash
        autohide = function(motion)
          -- autohide flash when the operator is `y`
          return vim.fn.mode(true):find "no" and vim.v.operator == "y"
        end,
        -- when to show jump labels
        jump_labels = function(motion)
          -- never show jump labels by default
          -- return false
          -- Always show jump labels for ftFT
          return vim.v.count == 0 and motion:find "[ftFT]"
          -- Show jump labels for ftFT in operator-pending mode
          -- return vim.v.count == 0 and motion:find("[ftFT]") and vim.fn.mode(true):find("o")
        end,
        -- When using jump labels, don't use these keys
        -- This allows using those keys directly after the motion
        label = { exclude = "hjkliardc" },
        -- by default all keymaps are enabled, but you can disable some of them,
        -- by removing them from the list.
        keys = { "f", "F", "t", "T", ";", "," },
        search = { wrap = false },
        highlight = { backdrop = true },
        jump = { register = false },
      },
    },
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function() require("flash").jump() end,
        desc = "Flash",
      },
      {
        "S",
        mode = { "n", "o", "x" },
        function() require("flash").treesitter() end,
        desc = "Flash Treesitter",
      },
      {
        "r",
        mode = "o",
        function() require("flash").remote() end,
        desc = "Remote Flash",
      },
      {
        "R",
        mode = { "o", "x" },
        function() require("flash").treesitter_search() end,
        desc = "Flash Treesitter Search",
      },
      {
        "<c-s>",
        mode = { "c" },
        function() require("flash").toggle() end,
        desc = "Toggle Flash Search",
      },
    },
  },
}
