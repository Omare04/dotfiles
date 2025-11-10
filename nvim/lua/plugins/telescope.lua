return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>/",
        function()
          require("telescope.builtin").current_buffer_fuzzy_find()
        end,
        desc = "Search inside current file (VSCode style)",
      },
    },
    opts = {
      defaults = {
        hidden = true,
      },
    },
  },
}
