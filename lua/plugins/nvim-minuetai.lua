return {
	"milanglacier/minuet-ai.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		provider = "openai_fim_compatible",
		n_completions = 1,
		context_window = 2048,
		request_timeout = 10, -- seconds
		throttle = 500,
		debounce = 600,
		notify = false, -- disable error notifications
		virtualtext = {
			auto_trigger_ft = { "*" },
			auto_trigger_ignore_ft = { "lua" },
			keymap = {
				accept = "<Tab>",
				prev = "<A-[>",
				next = "<A-]>",
				dismiss = "<Esc>",
			},
		},
		provider_options = {
			openai_fim_compatible = {
				api_key = "APPDATA",
				name = "Ollama",
				end_point = "http://localhost:11434/v1/completions",
				model = "qwen2.5-coder:7b",
				optional = {
					max_tokens = 56,
					top_p = 0.9,
				},
			},
		},
	},
	-- config = function()
	-- 	require("minuet").setup()
	-- end,
}
