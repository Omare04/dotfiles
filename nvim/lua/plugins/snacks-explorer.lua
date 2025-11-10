return {
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        show_hidden = true,
      },
    },
    keys = {
      {
        "<leader>e",
        function()
          require("snacks.explorer").open()
        end,
        desc = "Open Snacks Explorer",
      },
    },
  },
}
