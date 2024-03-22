local config = require "plugins.configs.lspconfig"
local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require "lspconfig"

-- lspconfig.rust_analyzer.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = { "rust" },
--   root_dir = lspconfig.util.root_pattern "Cargo.toml",
--   flags = {
--     exit_timeout = false,
--   },
--   settings = {
--     ["rust_analyzer"] = {
--       cargo = {
--         allFeatures = true,
--         sysroot = "/Users/belsy/.cargo/bin/rustup",
--       },
--       procMacro = {
--         enable = true,
--       },
--       diagnostics = {
--         enable = true,
--       },
--     },
--   },
-- }

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}

lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true,
    },
  },
}
