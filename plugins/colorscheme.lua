return {
  "Mofiqul/vscode.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local c = require("vscode.colors").get_colors()
    require("vscode").setup {
      transparent = false,
      italic_comments = false,
      disable_nvimtree_bg = true,
      color_overrides = {
        vscLineNumber = "#3f3f3f",
      },
      group_overrides = {
        Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
      },
    }
    require("vscode").load()
    vim.cmd [[colorscheme vscode]]
  end,
}
