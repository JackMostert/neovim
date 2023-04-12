return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(localOptions)
    localOptions.enable_diagnostics = true
    localOptions.follow_current_file = true
    localOptions.window = { width = 40, mappings = { ["l"] = "open" } }
    return localOptions
  end,
}
