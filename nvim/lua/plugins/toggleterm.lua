return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        direction = "horizontal",
        size = 15,
      })
      vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>", { desc = "Toggle Terminal" })
      vim.keymap.set("t", "<leader>tt", "<cmd>ToggleTerm<cr>", { desc = "Toggle Terminal" })
      vim.keymap.set("t", "jk", [[<C-\><C-n>]], { desc = "Terminal normal mode via jk" })
      vim.keymap.set("t", "<C-t>", [[<C-\><C-n><cmd>ToggleTerm<cr>]], { desc = "Fast Toggle Terminal" })
    end,
  },
}
