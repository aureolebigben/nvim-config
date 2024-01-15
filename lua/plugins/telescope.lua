return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, {
				desc = "Find files",
			})
      vim.keymap.set("n", "<leader>ff", builtin.find_files, {
        desc = "Find files"
      })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {
				desc = "Find in files",
			})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})

			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"debugloop/telescope-undo.nvim",
		dependencies = { "nvim-telescope/telescope.nvim" },
		config = function()
			require("telescope").setup({
				extensions = {
					["undo"] = {},
				},
			})
			require("telescope").load_extension("undo")

      local undo = require("telescope").extensions.undo

      vim.keymap.set("n", "<leader>u", undo.undo, {
        desc = "Undo"
      })
		end,
	},
}
