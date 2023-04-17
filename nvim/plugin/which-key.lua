local wk = require("which-key")

local mappings = {
	["<leader>"] = {
		f = {
			name = "File/Search",
			f = { "<cmd>Telescope find_files<cr>", "Find file" },
			g = { "<cmd>Telescope git_files<cr>", "Git files" },
			l = { "<cmd>Telescope live_grep<cr>", "Grep" },
			h = { "<cmd>Telescope help_tags<cr>", "Nvim help" },
			b = { "<cmd>Telescope buffers<cr>", "Buffers" },
			r = { require('telescope.builtin').lsp_references, "References" },
			m = { vim.lsp.buf.format, "Format file" }, -- Maybe remap?
		},
		g = {
			name = "Git",
			s = { "<cmd>0G<cr>", "Git status" },
			b = { "<cmd>GitBlameToggle<cr>", "Toggle Git blame" },
			d = { "<cmd>Gvdiffsplit<cr>", "Git diff" },
		},
		u = "Undo tree",
		d = { vim.diagnostic.open_float, "Diagnostics" },
		c = { "<cmd>CommentToggle<cr>", "Toggle comment" },
	},
}

local mappings_visual = {
	["<leader>"] = {
		y = { '"+y', "Copy to clipboard" },
		c = { "<cmd>CommentToggle<cr>", "Toggle comment" },
	},
}

wk.register(mappings)
wk.register(mappings_visual, { mode = "v" })

wk.setup({})
