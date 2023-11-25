return {
  'aserowy/tmux.nvim',
  config = function()
    local tmux = require("tmux")
    tmux.setup()
    vim.keymap.set("n", "<C-h>", "<cmd>lua require'tmux'.move_left()<cr>", { desc = "Go to left window" })
    vim.keymap.set("n", "<C-j>", "<cmd>lua require'tmux'.move_bottom()<cr>", { desc = "Go to lower window" })
    vim.keymap.set("n", "<C-k>", "<cmd>lua require'tmux'.move_top()<cr>", { desc = "Go to upper window" })
    vim.keymap.set("n", "<C-l>", "<cmd>lua require'tmux'.move_right()<cr>", { desc = "Go to right window" })

    vim.keymap.set("n", "<leader><leader><leader><leader><leader><leader>l", "<Plug>NetrwRefresh",
      { desc = "Freed <C-l> in Netrw" })
  end,
}
