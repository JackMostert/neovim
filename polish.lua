return function()
  local function alpha_on_bye(cmd)
    local bufs = vim.fn.getbufinfo { buflisted = true }
    vim.cmd(cmd)
    if require("astronvim.utils").is_available "alpha-nvim" and not bufs[2] then require("alpha").start(true) end
  end

  vim.keymap.del("n", "<leader>c")

  vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>", { silent = true, noremap = true })
  vim.api.nvim_set_keymap(
    "n",
    "<leader>xw",
    "<cmd>Trouble workspace_diagnostics<cr>",
    { silent = true, noremap = true }
  )
  vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", { silent = true, noremap = true })
  vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>", { silent = true, noremap = true })
  vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", { silent = true, noremap = true })
  vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>", { silent = true, noremap = true })
  vim.keymap.set("n", "<leader>lt", function() require("lsp_lines").toggle() end, { silent = true, noremap = true })
  vim.api.nvim_set_keymap("v", "p", '"_dP', { silent = true, noremap = true })

  local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
  vim.api.nvim_create_autocmd("TextYankPost", {
    pattern = "*",
    callback = function() vim.highlight.on_yank() end,
    group = highlight_group,
  })

  if require("astronvim.utils").is_available "bufdelete.nvim" then
    vim.keymap.set("n", "<leader>c", function() alpha_on_bye "Bdelete!" end, { desc = "Close buffer" })
  else
    vim.keymap.set("n", "<leader>c", function() alpha_on_bye "bdelete!" end, { desc = "Close buffer" })
  end
end
