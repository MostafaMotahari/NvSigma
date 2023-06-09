require("mason").setup()
local mason_lspconfig = require("mason-lspconfig")
local nvim_lsp = require("lspconfig")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
	properties = { "documentation", "detail", "additionalTextEdits" },
}

capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

mason_lspconfig.setup {
    auto_install = true,
    ensure_installed = { "lua_ls", "pylsp" },
}

-- pyls normal python lsp
nvim_lsp.pylsp.setup({
  cmd = { "pylsp" },
  filetypes = { "python" },
  root_dir = nvim_lsp.util.root_pattern(".git", "venv", ".env", "main.py"),
  settings = {
    pylsp = {
      plugins = {
        pylsp_mypy = { enabled = true },
        pylsp_black = { enabled = true },
        pylsp_isort = { enabled = true },
        -- disabled standard plugins
        autopep8 = { enabled = false }, -- covered by black
        yapf = { enabled = false }, -- covered by black
        pycodestyle = { enabled = false },
        pydocstyle = { enabled = false },
      },
    },
  },
  capabilities = capabilities,
  single_file_support = true,
})
