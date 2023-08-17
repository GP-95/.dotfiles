require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"help",
		"javascript",
		"typescript",
		"rust",
		"lua",
		"haskell",
		"bash",
		"html",
		"css",
		"scss",
		"json",
		"toml",
		"yaml",
		"sql",
		"zig",
		"go",
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	autotag = {
		enabled = true,
	},
})
