return {
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    event = "VeryLazy",
    config = function()
      require("venv-selector").setup({
        name = ".venv",
        auto_refresh = false,
        search_venv_managers = true,
        search_workspace = true,
      })
    end,
    keys = {
      { "<leader>vs", "<cmd>VenvSelect<cr>", desc = "Select VirtualEnv" },
    },
  },

  {
    "HallerPatrick/py_lsp.nvim",
    ft = "python",
    config = function()
      require("py_lsp").setup()
    end,
  },
}
