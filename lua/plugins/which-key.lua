return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
  config = function ()
    local wk = require('which-key')
    local mappings = {
      q = {":q<CR>", "Quit"}
    }
    local opts = {
      prefix = '<leader>'
    }

    wk.register(mappings, opts)
  end
}
