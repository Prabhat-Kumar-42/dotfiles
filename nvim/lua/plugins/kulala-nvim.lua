return {
  "mistweaverco/kulala.nvim",
  config = function()
    local kulala = require("kulala")
    kulala.setup({
      -- default_view, body or headers
      default_view = "body",
      -- dev, test, prod, can be anything
      -- see: https://learn.microsoft.com/en-us/aspnet/core/test/http-files?view=aspnetcore-8.0#environment-files
      default_env = "dev",
      -- enable/disable debug mode
      debug = true,
      -- default formatters for different content types
      formatters = {
        json = { "jq", "." },
        xml = { "xmllint", "--format", "-" },
        html = { "xmllint", "--format", "--html", "-" },
      },
      -- default icons
      icons = {
        inlay = {
          loading = "⏳",
          done = "✅",
          error = "❌",
        },
        lualine = "🐼",
      },
      -- additional cURL options
      -- see: https://curl.se/docs/manpage.html
      additional_curl_options = {},
    })
    vim.keymap.set("n", "<leader>kr", ":lua require('kulala').run()<CR>", { desc = "runs the current request" })
    vim.keymap.set(
      "n",
      "<leader>kt",
      ":lua require('kulala').toggle_view()<CR>",
      { desc = "toggle b/w body and header view of last request" }
    )
    vim.keymap.set("n", "<leader>kp", ":lua require('kulala').jump_prev()<CR>", { desc = "jumps to previous request" })
    vim.keymap.set("n", "<leader>kn", ":lua require('kulala').jump_next()<CR>", { desc = "jumps to next request" })
    vim.keymap.set("n", "<leader>ke", ":lua require('kulala').set_selected_env()<CR>", { desc = "selects environment" })
  end,
}
