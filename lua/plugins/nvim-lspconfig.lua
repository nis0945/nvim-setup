return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    opts = {
        diagnostics = {
            underline = true,
            update_in_insert = false,
            virtual_text = { spacing = 4, prefix = "●" },
            severity_sort = true,
        },
        servers = {
            clangd = {
                cmd = { "clangd" },
                on_attach = function(client, bufnr)
                    local function buf_map(mode, lhs, rhs, desc)
                        vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, { noremap = true, silent = true, desc = desc })
                    end
                    buf_map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", "Go to Definition")
                    buf_map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", "Hover Documentation")
                    buf_map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename Symbol")
                end,
            },
            lua_ls = {
                settings = {
                    Lua = {
                        workspace = { checkThirdParty = false },
                        completion = { callSnippet = "Replace" },
                    },
                },
            },
        },
    },
    config = function(_, opts)
        -- require("mason").setup()
        -- require("mason-lspconfig").setup({
        --     ensure_installed = vim.tbl_keys(opts.servers),
        -- })

        vim.diagnostic.config(opts.diagnostics)
    end,
}
