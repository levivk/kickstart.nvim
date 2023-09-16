return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
    vim.keymap.set('n', '<leader>f', ':NvimTreeToggle<CR>', {desc = 'nvim-tree: Toggle file explorer'})
    vim.keymap.set('n', '<leader>F', ':NvimTreeFocus<CR>', {desc = 'nvim-tree: Focus on file explorer'})
  end,
}
