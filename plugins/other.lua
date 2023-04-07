return {
  {
    "rgroli/other.nvim",
    event = "BufRead",
    config = function()
      require("other-nvim").setup {
        mappings = {
          {
            pattern = "app/(.*)/(.*).rb$",
            target = "spec/%1/%2_spec.rb",
          },
          {
            pattern = "spec/(.*)/(.*)_spec.rb$",
            target = "app/%1/%2.rb",
          },
          {
            pattern = "server/src/(.*)/(.*).ts$",
            target = "server/test/%1/%2.spec.ts",
          },
          {
            pattern = "server/test/(.*)/(.*).spec.ts$",
            target = "server/src/%1/%2.ts",
          },
          {
            pattern = "client/test/(.*)/(.*).spec.ts$",
            target = "client/%1/%2.ts",
          },
          {
            pattern = "client/(.*)/(.*).ts$",
            target = "client/test/%1/%2.spec.ts",
          },
          {
            pattern = "client/(.*)/(.*).vue$",
            target = "client/test/%1/%2.spec.ts",
          },
          {
            pattern = "client/test/(.*)/(.*).spec.ts$",
            target = "client/%1/%2.vue",
          },
        },
      }
    end,
  },
}
