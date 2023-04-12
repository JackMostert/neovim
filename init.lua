local config = {
  default_theme = {
    plugins = {
      aerial = true,
      beacon = false,
      bufferline = true,
      cmp = true,
      dashboard = true,
      highlighturl = true,
      hop = false,
      indent_blankline = false,
      lightspeed = false,
      ["neo-tree"] = true,
      notify = true,
      ["nvim-tree"] = false,
      ["nvim-web-devicons"] = true,
      rainbow = false,
      symbols_outline = true,
      telescope = true,
      treesitter = true,
      vimwiki = true,
      ["which-key"] = true,
    },
  },
  colorscheme = "vscode",
  treesitter = {
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = true,
    },
    rainbow = {
      enable = false,
    },
  },
  lsp = {
    diagnostics = {
      virtual_text = false,
      underline = true,
    },
    formatting = {
      format_on_save = false,
    },
  },
}

return config
