return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	opts = {
		-- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
		-- 'super-tab' for mappings similar to vscode (tab to accept)
		-- 'enter' for enter to accept
		-- 'none' for no mappings
		--
		-- All presets have the following mappings:
		-- C-space: Open menu or open docs if already open
		-- C-n/C-p or Up/Down: Select next/previous item
		-- C-e: Hide menu
		-- C-k: Toggle signature help (if signature.enabled = true)
		keymap = { preset = "super-tab" },
		appearance = {
			nerd_font_variant = "mono",
		},
		completion = {
			documentation = {
				window = { border = "single" },
				auto_show = false,
			},
		},
		sources = {
			default = { "lsp", "path", "buffer", "snippets", "minuet" },
			providers = {
				minuet = {
					name = "minuet",
					module = "minuet.blink",
					async = true,
					timeout_ms = 3000,
					score_offset = 50,
				},
			},
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	completion = { trigger = { prefetch_on_insert = false } },
	opts_extend = { "sources.default" },
}
