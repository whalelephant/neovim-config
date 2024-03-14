local M = {}

M.abc = {
  n = {
    ["<S-l>"] = { "<End>", "End of line" },
    ["<S-h>"] = { "^", "Beginning of line" },
    ["<leader>y"] = { '"+y', "Yank to system clipboard" },
    ["<leader>yy"] = { '"+yy', "Yank to system clipboard" },
    ["y"] = { '"1y', "Yank to register 1 clipboard" },
    ["yy"] = { '"1yy', "Yank to system clipboard" },
    ["p"] = { '"1p', "Paste from register 1 clipboard" },
    ["x"] = { '"1x', "Cut to register 1 clipboard" },
    ["d"] = { '"_d', "Delete to Blackhole registry" },
    ["dd"] = { '"_dd', "Delete line to Blackhole registry" },
  },
  v = {
    ["<S-l>"] = { "<End>", "End of line" },
    ["<S-h>"] = { "^", "Beginning of line" },
    ["y"] = { '"1y', "Yank to register 1 clipboard" },
    ["yy"] = { '"1yy', "Yank to system clipboard" },
    ["x"] = { '"1x', "Cut to register 1 clipboard" },
    ["p"] = { '"1p', "Paste from register 1 clipboard" },
    ["<leader>y"] = { '"+y', "Yank to system clipboard" },
    ["<leader>yy"] = { '"+yy', "Yank to system clipboard" },
    ["d"] = { '"_d', "Delete to Blackhole registry" },
    ["dd"] = { '"_dd', "Delete line to Blackhole registry" },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Run or continue the debugger",
    },
  },
}

return M
