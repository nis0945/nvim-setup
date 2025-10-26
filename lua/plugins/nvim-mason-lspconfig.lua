return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
    "saghen/blink.cmp",
  },
  opts = function()
    local capabilities = require("blink.cmp").get_lsp_capabilities()

    return {
      ensure_installed = {},
      automatic_installation = false,
      handlers = {
        function(server_name)
          lspconfig[server_name].setup({
            capabilities = capabilities,
          })
        end,
      },
    }
  end,
}
