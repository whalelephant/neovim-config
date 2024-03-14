local M = {
  filetype = {
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
    javascript = {
      require("formatter.filetypes.javascript").prettier,
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier,
    },
    yaml = {
      require("formatter.filetypes.yaml").prettier,
    },
    yml = {
      require("formatter.filetypes.yaml").prettier,
    },
    json = {
      require("formatter.filetypes.json").prettier,
    },
    go = {
      require("formatter.filetypes.go").gofmt(),
      require("formatter.filetypes.go").golines(),
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace,
    },
  },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  command = "FormatWriteLock",
})

return M
