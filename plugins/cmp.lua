return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require "cmp"
    opts.mapping["<C-x>"] = cmp.mapping.select_next_item()
    opts.experimental = {
      ghost_text = true,
    }
    return opts
  end,
}
