require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls" }
local on_attach = require("nvchad.lsp").on_attach
local capabilities = require("nvchad.lsp").capabilities

vim.lsp.enable(servers)

vim.lsp.config["tsserver"] = {
  on_attach = on_attach,
  capabilities = capabilities,

  settings = {
    typescript = {
      format = { enable = true },
    },
    javascript = {
      format = { enable = true },
    },
  },
}

-- Apply configuration
vim.lsp.enable("tsserver")

vim.lsp.config["eslint"] = {
  on_attach = on_attach,
  capabilities = capabilities,
}

vim.lsp.enable("eslint")

-- HTML autocompletion inside TSX
vim.lsp.config["html"] = {
  on_attach = on_attach,
  capabilities = capabilities,

  filetypes = { "html", "typescriptreact", "javascriptreact" },

  settings = {
    html = {
      format = { enable = true },
      hover = { documentation = true, references = true },
    },
  },
}

vim.lsp.enable("html")

vim.lsp.config["emmet_ls"] = {
  on_attach = on_attach,
  capabilities = capabilities,

  filetypes = {
    "html",
    "css",
    "javascriptreact",
    "typescriptreact",
    "javascript",
    "typescript"
  },
}

vim.lsp.enable("emmet_ls")
