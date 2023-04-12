-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader><tab>"] = { "<cmd>Other<cr>", desc = "Jump to 'other' file" },
    ["<leader><space>"] = { function() require("harpoon.ui").nav_next() end, desc = "Harpoon next" },
    ["<space><leader>"] = { function() require("harpoon.ui").nav_prev() end, desc = "Harpoon prev" },
    ["<leader>s"] = { "<cmd>wall<cr>", desc = "Save all files" },
    ["<leader>x"] = { "<cmd>qa<cr>", desc = "Quit neovim" },
    ["[<space>"] = {
      function() require("user.custom.unimpaired").paste_blank_line_above() end,
      desc = "Paste blank line above",
    },
    ["]<space>"] = {
      function() require("user.custom.unimpaired").paste_blank_line_below() end,
      desc = "Paste blank line below",
    },
    --
    -- buffers
    --
    ["<leader><leader>"] = { function() require("telescope.builtin").buffers() end, desc = "Find buffers" },
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>b\\"] = false, --unmap default mapping
    ["<leader>b-"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          vim.cmd.split()
          vim.api.nvim_win_set_buf(0, bufnr)
        end)
      end,
      desc = "Horizontal split buffer from tabline",
    },
    ["<leader>b|"] = false, --unmap default mapping
    ["<leader>b/"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          vim.cmd.vsplit()
          vim.api.nvim_win_set_buf(0, bufnr)
        end)
      end,
      desc = "Vertical split buffer from tabline",
    },
    --
    -- window management/navigation
    --
    ["<leader>e"] = false, --unmap default mapping
    ["<leader>fe"] = { "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer" },
    ["<leader>o"] = false,
    ["<M-e>"] = {
      function()
        if vim.bo.filetype == "neo-tree" then
          vim.cmd.wincmd "p"
        else
          vim.cmd.Neotree "focus"
        end
      end,
      desc = "Toggle Explorer Focus",
    },
    ["<C-h>"] = { function() require("smart-splits").move_cursor_left() end, desc = "Move to left split" },
    ["<C-j>"] = { function() require("smart-splits").move_cursor_down() end, desc = "Move to below split" },
    ["<C-k>"] = { function() require("smart-splits").move_cursor_up() end, desc = "Move to above split" },
    ["<C-l>"] = { function() require("smart-splits").move_cursor_right() end, desc = "Move to right split" },
    --
    -- Jump
    --
    ["<leader>j"] = { name = "Jump" },
    ["<leader>jb"] = { "<cmd>HopWordBC<cr>", desc = "Before Cursor" },
    ["<leader>jj"] = { "<cmd>HopLineAC<cr>", desc = "Line downwards" },
    ["<leader>jl"] = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "List marks" },
    ["<leader>jm"] = { "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Mark file" },
    ["<leader>jk"] = { "<cmd>HopLineBC<cr>", desc = "Line upwards" },
    ["<leader>jo"] = { "<cmd>Telescope treesitter theme=ivy<cr>", desc = "Symbols" },
    ["<leader>jw"] = { "<cmd>HopWordAC<cr>", desc = "Word" },
    --
    -- Test
    --
    ["<leader>t"] = { name = "Test" },
    ["<leader>tN"] = { "<cmd>lua require('neotest').run.run({strategy='dap'})<cr>", desc = "Debug nearest test" },
    ["<leader>tf"] = { "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", desc = "File" },
    ["<leader>ti"] = { "<cmd>lua require('neotest').output.open({ enter = true })<cr>", desc = "Info" },
    ["<leader>tj"] = { "<cmd>lua require('neotest').jump.next()<cr>", desc = "Jump to next test" },
    ["<leader>tk"] = { "<cmd>lua require('neotest').jump.prev()<cr>", desc = "Jump to prev test" },
    ["<leader>tn"] = { "<cmd>lua require('neotest').run.run()<cr>", desc = "Nearest" },
    ["<leader>ts"] = { "<cmd>lua require('neotest').summary.toggle()<cr>", desc = "Sumamry" },
    --
    -- Git
    --
    ["<leader>ga"] = { function() require("gitsigns").stage_hunk() end, desc = "Stage Git hunk" },
    ["<leader>gA"] = { function() require("gitsigns").stage_buffer() end, desc = "Stage Git buffer" },
    ["<leader>gs"] = { function() require("neogit").open { kind = "split" } end, desc = "Stage Git buffer" },
    ["<leader>gm"] = { function() require("neogit").open { "commit" } end, desc = "Stage Git buffer" },
    --
    -- LSP
    --
    ["<leader>lt"] = { function() require("trouble").toggle() end, desc = "Trouble toggle" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
