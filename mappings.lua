return {
  n = {
    ["<leader>q"] = { "<cmd>q<cr>", desc = "Quit" },
    ["<A-k>"] = { "<Esc>:m .-2<CR>==", desc = "Move Up" },
    ["<A-j>"] = { "<Esc>:m .+1<CR>==", desc = "Move Down" },
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
  },
}
