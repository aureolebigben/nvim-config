return {
	{
		"nvim-neotest/neotest",
		lazy = true,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
			"olimorris/neotest-phpunit",
		},
		config = function()
			local neotest = require("neotest")

			neotest.setup({
				adapters = {
					require("neotest-phpunit"),
				},
			})

			vim.keymap.set("n", "<leader>Tr", neotest.run.run, {
				desc = "Run test",
			})

			vim.keymap.set("n", "<leader>Tf", function()
				neotest.run.run(vim.fn.expand("%"))
			end, {
				desc = "File",
			})
		end,
	},
}
