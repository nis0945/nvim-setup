return {
    "vague-theme/vague.nvim",
    lazy = false, -- primary theme, disable lazy loading
    priority = 1000,
    opts = {
        transparent = true,
        plugins = {
            cmp = {
                match = "bold",
                match_fuzzy = "bold"
            }
        }
    },
    config = function(_, opts)
        require("vague").setup(opts)
        vim.cmd("colorscheme vague")
    end
}
