return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.buttons.val = {}
      opts.section.header.val = {
        [[                                            ,d""7b.]],
        [[                                           ,'    ,d^b.]],
        [[                            __,d"""""""b..d.    d']],
        [[              ,d""""-.  ,d""'              `"b.dP]],
        [[            dP' ,___  `7b.                     `b]],
        [[          `"788P'  `".   "                       `b]],
        [[          ,d" `b      `"                          `7.]],
        [[    `P""""7.   8)                                   7.]],
        [[     `.    8  ,P               ,---.                 """"b.]],
        [[      8.  d' ,P             ,d"   ,88b.         "b       `8]],
        [[     d' `"  ,P             ""    ,P   `7b        `b     ,dP]],
        [[    d'      8                    d       `b.      d8888888888b.]],
        [[   ,'      d'                   ,8.     8   78""""""788888888' `"b.]],
        [[   8b _   8P                 ,P'   `"""oo.,d"          ""788'     `7.]],
        [[ .-""""8 d8'            ,-""7P                       .    `7.      ,8.]],
        [[`b     8 88              ,d"8   d8b.                 8b    `b      d `.]],
        [[  `b___8 88             '  ,8  d8888888b.           ; `b    8     ,P  8.]],
        [[   8     88                8  d8"7P""8""""b..      ,8  `b  ,8"""""8'  88]],
        [[   8     `b ,d"'           7  8  8   8   ,8. 7P--,dP   ,8"'     ,8' _,d8.]],
        [[   7.     8d"                 8 ,db.P""bd' `7P ,d""""""""""""""""""'    8]],
        [[   `b     d'                  8P'  8   88  ,P"'                         8]],
        [[    7. _,d'                   7b  ,d88888"'                            d']],
        [[    ,P' '8                     8888888"'                               8]],
        [[   ,P   88                     `888P'                                  8]],
        [[  ,8_mGk_8                       "'                                   d']],
        [[        "8                                                    ,'     d']],
        [[         `b                                                  d8b..d""]],
        [[          `b                                              ,dP']],
        [[           `7.                           ______________,d""]],
        [[             `7b.                     ,d""]],
        [[                `7b..             _,d"']],
        [[                     """--....-"""']],
      }
      return opts
    end,
  },
  -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },
  --
  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  -- {
  --   "L3MON4D3/LuaSnip",
  --   config = function(plugin, opts)
  --     require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom luasnip configuration such as filetype extend or custom snippets
  --     local luasnip = require "luasnip"
  --     luasnip.filetype_extend("javascript", { "javascriptreact" })
  --   end,
  -- },
  -- {
  --   "windwp/nvim-autopairs",
  --   config = function(plugin, opts)
  --     require "plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom autopairs configuration such as custom rules
  --     local npairs = require "nvim-autopairs"
  --     local Rule = require "nvim-autopairs.rule"
  --     local cond = require "nvim-autopairs.conds"
  --     npairs.add_rules(
  --       {
  --         Rule("$", "$", { "tex", "latex" })
  --           -- don't add a pair if the next character is %
  --           :with_pair(cond.not_after_regex "%%")
  --           -- don't add a pair if  the previous character is xxx
  --           :with_pair(
  --             cond.not_before_regex("xxx", 3)
  --           )
  --           -- don't move right when repeat character
  --           :with_move(cond.none())
  --           -- don't delete if the next character is xx
  --           :with_del(cond.not_after_regex "xx")
  --           -- disable adding a newline when you press <cr>
  --           :with_cr(cond.none()),
  --       },
  --       -- disable for .vim files, but it work for another filetypes
  --       Rule("a", "a", "-vim")
  --     )
  --   end,
  -- },
  -- By adding to the which-key config and using our helper function you can add more which-key registered bindings
  -- {
  --   "folke/which-key.nvim",
  --   config = function(plugin, opts)
  --     require "plugins.configs.which-key"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- Add bindings which show up as group name
  --     local wk = require "which-key"
  --     wk.register({
  --       b = { name = "Buffer" },
  --     }, { mode = "n", prefix = "<leader>" })
  --   end,
  -- },
}
