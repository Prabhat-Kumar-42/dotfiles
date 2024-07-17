return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")
    auto_session.setup({
      auto_restore_enabled = false,
      auto_session_suppress_dirs = {
        "~/Desktop/",
        "~/Downloads",
        "~/",
        "~/Documents",
      },
    })

    local key_map = vim.keymap
    key_map.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
    key_map.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root directory" })
  end,
}
