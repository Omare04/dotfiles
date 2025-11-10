-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.opt.background = "dark"
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- This makes hidden files visible by default
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
  },
}
