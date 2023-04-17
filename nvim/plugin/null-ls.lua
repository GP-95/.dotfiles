local null_ls = require("null-ls")
local fmt = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	debug = false,
	sources = {
		fmt.rustfmt,
		fmt.prettier,
		fmt.stylua,
        fmt.taplo,
        fmt.yamlfmt,
        -- fmt.shfmt
        fmt.beautysh
	},
})
