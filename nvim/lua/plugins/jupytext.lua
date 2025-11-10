return {
  "GCBallesteros/jupytext.nvim",
  config = function()
    require("jupytext").setup({
      style = "percent",
      output_extension = "ipynb",
      force_ft = "python",
    })
  end,
}
