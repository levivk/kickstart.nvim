-- https://github.com/folke/trouble.nvim
return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},

  config = function()
    vim.keymap.set("n", "<leader>xx", function() require("trouble").open() end, {desc = 'trouble: Open'})
    vim.keymap.set("n", "<leader>xw", function() require("trouble").open("workspace_diagnostics") end, {desc = 'trouble: Workspace diagnostics'})
    vim.keymap.set("n", "<leader>xd", function() require("trouble").open("document_diagnostics") end, {desc = 'trouble: Document diagnostics'})
    vim.keymap.set("n", "<leader>xq", function() require("trouble").open("quickfix") end, {desc = 'trouble: Quickfix'})
    vim.keymap.set("n", "<leader>xl", function() require("trouble").open("loclist") end, {desc = 'trouble: loclist'})
    vim.keymap.set("n", "gR", function() require("trouble").open("lsp_references") end, {desc = 'trouble: LSP references'})
  end,
}
