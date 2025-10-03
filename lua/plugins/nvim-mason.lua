return {
    "mason-org/mason.nvim",
    lazy = false,
    opts = {
        ensure_installed = { "tsserver", "clangd" }
    },
    dependencies = {
        "neovim/nvim-lspconfig",
    }
}
