return {
    "mason-org/mason.nvim",
    lazy = false,
    opts = {
        ensure_installed = { "tsserver", "clangd", "codelldb" }
    },
    dependencies = {
        "neovim/nvim-lspconfig",
    }
}
