require("conform").setup({
	log_level = vim.log.levels.DEBUG,
	format_after_save = {
		-- These options will be passed to conform.format()
		lsp_fallback = true,
	},
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettier", "tsserver" },
		ruby = { "rubocop" },
		scss = { "prettier" },
		svelte = { "prettier" },
		-- Use the "*" filetype to run formatters on all filetypes.
		["*"] = { "codespell" },
		-- Use the "_" filetype to run formatters on filetypes that don't
		-- have other formatters configured.
		["_"] = { "trim_whitespace" },
	},
	formatters = {
		rubocop = {
			command = "rubocop",
			prepend_args = {
				"--server",
				"--fix-layout",
				"--format",
				"files",
			},
			stdin = true,
		},
	},
})
