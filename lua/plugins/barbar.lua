return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	version = "^1.0.0",
	config = function()
		require("barbar").setup({
			animation = true,
			clickable = true,
			tab_pages = false,
			auto_hide = 1,
			focus_on_close = "left",
			highligh_visible = true,
			sidebar_filetypes = {
				["neo-tree"] = { event = "BufWipeout" },
			},
		})
	end,
}
