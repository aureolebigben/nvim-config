return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local neotree = require("neo-tree")

    neotree.setup({
      close_if_last_window = true,
    })

    vim.keymap.set("n", "<C-n>", "<CMD>Neotree filesystem reveal left<CR>", {
      desc = "Open Neotree",
    })
    vim.keymap.set("n", "<leader>n", "<CMD>Neotree filesystem reveal left<CR>", {
      desc = "Open Neotree"
    })
  end,
}
