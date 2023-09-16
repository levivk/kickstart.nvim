-- https://github.com/romgrk/barbar.nvim
return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },

  lazy = false,
  init = function() vim.g.barbar_auto_setup = false end,
  opts = {
    -- animation = true,
    -- insert_at_start = true,
    -- …etc.
  },

  config = function()
    require('barbar').setup({})
    -- Move to previous/next
    vim.keymap.set("n", "<A-,>", "<Cmd>BufferPrevious<CR>", { desc = 'barbar: BufferPrevious' })
    vim.keymap.set("n", "<A-.>", "<Cmd>BufferNext<CR>", { desc = 'barbar: BufferNext' })
    -- Re-order to previous/next
    vim.keymap.set('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', { desc = 'barbar: BufferMovePrevious' })
    vim.keymap.set('n', '<A->>', '<Cmd>BufferMoveNext<CR>', { desc = 'barbar: BufferMoveNext' })
    -- Goto buffer in position...
    vim.keymap.set('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', {desc = 'barbar: BufferGoto 1'})
    vim.keymap.set('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', {desc = 'barbar: BufferGoto 2'})
    vim.keymap.set('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', {desc = 'barbar: BufferGoto 3'})
    vim.keymap.set('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', {desc = 'barbar: BufferGoto 4'})
    vim.keymap.set('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', {desc = 'barbar: BufferGoto 5'})
    vim.keymap.set('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', {desc = 'barbar: BufferGoto 6'})
    vim.keymap.set('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', {desc = 'barbar: BufferGoto 7'})
    vim.keymap.set('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', {desc = 'barbar: BufferGoto 8'})
    vim.keymap.set('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', {desc = 'barbar: BufferGoto 9'})
    vim.keymap.set('n', '<A-0>', '<Cmd>BufferLast<CR>', {desc = 'barbar: BufferLast'})
    -- Pin/unpin buffer
    vim.keymap.set('n', '<A-p>', '<Cmd>BufferPin<CR>', {desc = 'barbar: BufferPin'})
    -- Close buffer
    vim.keymap.set('n', '<A-c>', '<Cmd>BufferClose<CR>', {desc = 'barbar: BufferClose'})
    -- Wipeout buffer
    --                 :BufferWipeout
    -- Close commands
    --                 :BufferCloseAllButCurrent
    --                 :BufferCloseAllButPinned
    --                 :BufferCloseAllButCurrentOrPinned
    --                 :BufferCloseBuffersLeft
    --                 :BufferCloseBuffersRight
    -- Magic buffer-picking mode
    vim.keymap.set('n', '<C-p>', '<Cmd>BufferPick<CR>', {desc = 'barbar: BufferPick'})
    -- Sort automatically by...
    vim.keymap.set('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', {desc = 'barbar: Sort tabs by buffer number'})
    vim.keymap.set('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', {desc = 'barbar: Sort tabs by directory'})
    vim.keymap.set('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', {desc = 'barbar: Sort tabs by language'})
    vim.keymap.set('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', {desc = 'barbar: Sort tabs by window number'})

    -- Other:
    -- :BarbarEnable - enables barbar (enabled by default)
    -- :BarbarDisable - very bad command, should never be used
    vim.keymap.set('n', '<leader>t', '<C-6>', {desc = 'Switch to most recent buffer'})
  end,
  -- version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
