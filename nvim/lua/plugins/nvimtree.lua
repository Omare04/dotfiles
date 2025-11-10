return {
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      filters = {
        dotfiles = false, -- DO NOT hide dotfiles
      },
      git = {
        enable = true,
        ignore = false, -- DO NOT hide .gitignored files (.env .gitignore etc)
      },
    },
  },
}
