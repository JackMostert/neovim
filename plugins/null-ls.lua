return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, opts)
    local null_ls = require "null-ls"
    opts.sources = {
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettier,
    }
    return opts
  end,
}