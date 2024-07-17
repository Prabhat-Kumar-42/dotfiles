return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set("n", "<leader>ne", ":Neotree <CR>")
    vim.keymap.set("n", "<leader>nc", ":Neotree toggle <CR>")
    vim.keymap.set("n", "<leader>nb", ":Neotree buffers float toggle<CR>")
    vim.keymap.set("n", "<leader>ng", ":Neotree git_status right toggle<CR>")
  end,
}
