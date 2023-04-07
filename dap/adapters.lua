return {
  dap = {
    adapters = {
      node2 = {
        type = "executable",
        command = "node",
        args = { os.getenv "HOME" .. "/Developer/3rd-parties/microsoft/vscode-node-debug2/out/src/nodeDebug.js" },
      },
      chrome = {
        type = "executable",
        command = "node",
        args = { os.getenv "HOME" .. "/.local/share/nvim/mason/packages/chrome-debug-adapter/out/src/chromeDebug.js" },
      },
    },
  },
}
