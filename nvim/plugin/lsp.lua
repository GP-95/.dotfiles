local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
	"html",
	"cssls",
	"tsserver",
	"rust_analyzer",
	"lua_ls",
	"hls",
    "taplo",
    "gopls"
})

lsp.setup_nvim_cmp({
	sources = {
		{ name = "nvim_lua" },
		{
			name = "nvim_lsp",
			entry_filter = function(entry, _ctx) -- Ignore snippets
				return require("cmp").lsp.CompletionItemKind.Snippet ~= entry:get_kind()
			end,
		},
		{ name = "crates" },
		-- {name = 'buffer', keyword_length = 3},
		{ name = "path", keyword_length = 3 },
		-- { name = "luasnip" },
	}
})

lsp.nvim_workspace({
	librart = vim.api.nvim_get_runtime_file("", true),
})
lsp.configure("sumneko_lua", {
	settings = {
		Lua = {
			diagnostics = {
				globals = {
					"vim",
				},
			},
		},
	},
})

-- lsp.configure("tsserver", {
--     root_dir = vim.lsp.util.root_pattern("package.json")
-- })
--
-- lsp.configure("deno", {
--     root_dir = vim.lsp.util.root_pattern("deno.json", "deno.jsonc")
-- })

local rust_lsp = lsp.build_options("rust_analyzer", {
	checkOnSave = {
		command = "clippy",
	},
})

lsp.on_attach(function(client, bufnr)
	if client.name == "tsserver" then -- Ignore tsserver formatting, using null-ls instead
		client.server_capabilities.documentFormattingProvider = false
	end
end)

lsp.setup()

require("rust-tools").setup({
	server = rust_lsp,
	tools = {
		runnables = {
			use_telescope = true,
		},
	},
})
