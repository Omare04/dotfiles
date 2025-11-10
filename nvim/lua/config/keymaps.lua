-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<leader>", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>e", function()
  local view = require("nvim-tree.view")
  if view.is_visible() then
    vim.cmd("NvimTreeFocus")
  else
    vim.cmd("NvimTreeToggle")
  end
end, { desc = "Toggle / Focus File Explorer" })
