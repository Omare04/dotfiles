return {
  {
    "Mofiqul/vscode.nvim",
    config = function()
      vim.opt.termguicolors = true
      require("vscode").setup({
        transparent = true, -- key bit
        italic_comments = true,
        underline_links = true,
      })
      vim.cmd.colorscheme("vscode")

      -- ensure common groups are truly transparent
      local transparent = { bg = "none" }
      for _, grp in ipairs({
        "Normal",
        "NormalFloat",
        "SignColumn",
        "LineNr",
        "CursorLineNr",
        "EndOfBuffer",
        "Folded",
        "NonText",
        "StatusLine",
        "StatusLineNC",
        "TabLine",
        "TabLineFill",
        "TabLineSel",
      }) do
        pcall(vim.api.nvim_set_hl, 0, grp, transparent)
      end
    end,
  },
  { "LazyVim/LazyVim", opts = { colorscheme = "vscode" } },
}
