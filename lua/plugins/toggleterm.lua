return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup()
		vim.keymap.set("n", "<leader>tf", "<CMD>ToggleTerm direction=float<CR>", {
			desc = "Float",
		})
	end,
}
