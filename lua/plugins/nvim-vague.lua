return {
    "vague-theme/vague.nvim",
    lazy = false, -- primary theme, disable lazy loading
    priority = 1000,
    opts = {
        transparent = false,
        plugins = {
            cmp = {
                match = "bold",
                match_fuzzy = "bold"
            }
        },
        colors = {
            bg = "#191716",
            inactiveBg = "#201c1b",
            fg = "#d7d2c8",
            floatBorder = "#8d7e72",
            line = "#2a2423",
            comment = "#746e68",
            builtin = "#bfcfc8",
            func = "#d2978c",
            string = "#e7b47f",
            number = "#e9b674",
            property = "#c9c3b9",
            constant = "#a0a7c2",
            parameter = "#c1a0af",
            visual = "#352f2d",
            error = "#d67b7b",
            warning = "#e9b674",
            hint = "#a0a7c2",
            operator = "#9bb4bc",
            keyword = "#a0a7c2",
            type = "#bfcfc8",
            search = "#2a2423",
            plus = "#8aa36b",
            delta = "#e9b674",
        }
    },
    config = function(_, opts)
        require("vague").setup(opts)
        vim.cmd("colorscheme vague")
    end
}
