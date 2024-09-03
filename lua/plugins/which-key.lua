return {
	"folke/which-key.nvim",
  dependencies = {
		"echasnovski/mini.icons", -- OPTIONAL: for file icons
	},
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	config = function()
		local wk = require("which-key")
		local mappings = {
			q = { ":q<CR>", "Quit" },
			f = "Find",
			c = "Code",
			g = "Git/Go to",
			t = "Terminal",
			T = "Test",
			d = "Debug",
		}
		local opts = {
			prefix = "<leader>",
		}

		wk.register(mappings, opts)
	end,
}
