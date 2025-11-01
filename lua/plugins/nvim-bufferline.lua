return {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = {
		options = {
			indicator = {
				icon = nil,
				style = "underline",
			},
			offsets = {
				{
					filetype = "snacks_layout_box",
					-- text = '󰙅  File Explorer',
					text = "",
					separator = true,
				},
			},
			tab_size = 24,
			show_buffer_icons = false,
			show_buffer_close_icons = false,
			auto_toggle_bufferline = true,
			separator_style = "slant",
			sort_by = "insert_at_end",
		},
	},
	config = function(_, opts)
		require("bufferline").setup(opts)
	end,
}
