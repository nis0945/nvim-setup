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
                cmd = { "clangd", "--background-index", "--clang-tidy", "--header-insertion=iwyu", "--completion-style-detailed", "--function-arg-placeholders", "--fallback-style=llvm" },
                keys = { "<leader>ch", "<cmd>ClangdSwitchSourceHeader<cr>", desc = "Switch source/header (C/C++)" }
                root_markers = {
                    "compile_commands.json",
                    "compile_flags.txt",
                    "configure.ac",
                    "Makefile",
                    "configure.ac",
                    "configure.in",
                    "config.h.in",
                    "meson.build",
                    "meson_options.txt",
                    "build.ninja",
                    ".git",
                },
                capabilities = {
                    offsetEncoding = { "utf-16" },
                },
                init_options = {
                    usePlaceholders = true,
                    completeUnimported = true,
                    clangdFileStatus = true,
                }
                -- on_attach = function(client, bufnr)
                --     local function buf_map(mode, lhs, rhs, desc)
                --         vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, { noremap = true, silent = true, desc = desc })
                --     end
                --     buf_map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", "Go to Definition")
                --     buf_map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", "Hover Documentation")
                --     buf_map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename Symbol")
                -- end,
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
        setup = {
            clangd = function(_, opts)
                require("clangd_extensions").setup(vim.tbl_deep_extend("force", {}, { server = opts }))
                return false
            end,
        }
    },
    config = function(_, opts)
        -- require("mason").setup()
        -- require("mason-lspconfig").setup({
        --     ensure_installed = vim.tbl_keys(opts.servers),
        -- })

        vim.diagnostic.config(opts.diagnostics)
    end,
}
