return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufNewFile", "BufReadPost" },
    opts = {
        ensure_installed = { "cpp", "javascript", "typescript" },
        highlight = { enable = true },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
          },
        },
        inlay_hints = {
            inline = false,
        },
        textobjects = {
          select = {
            enable = true,
            keymaps = {
              ["af"] = "@function.outer",
              ["if"] = "@function.inner",
              ["ac"] = "@class.outer",
              ["ic"] = "@class.inner",
            },
          },
        },
        highlight = { enable = true },
        indent = { enable = true },
    },
    config = function (LazyPlugin, opts)
        require("nvim-treesitter.configs").setup(opts)

        vim.o.foldmethod = "expr"
        vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
        vim.o.foldlevel = 99
    end,
}
