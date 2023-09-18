-- https://github.com/RRethy/vim-illuminate
-- So much for no configuration
return {
  "RRethy/vim-illuminate",
  opts = {
    delay = 0,
    under_cursor = false,
  },
  config = function()
    local illuminate = require('illuminate')
    illuminate.configure {
      delay = 0,
      under_cursor = false,
      filetypes_denylist = {
        'dirvish',
        'fugitive',
        'fugitiveblame',
      }
    }

    -- remove bad keymaps
    local alt_n_map = vim.fn.maparg('<A-n>', 'n')
    local alt_p_map = vim.fn.maparg('<A-p>', 'n')
    local alt_i_map_o = vim.fn.maparg('<A-i>', 'o')
    local alt_i_map_x = vim.fn.maparg('<A-i>', 'x')

    if string.find(alt_n_map, 'illuminate') then
      vim.keymap.del('n', '<A-n>')
    end
    if string.find(alt_p_map, 'illuminate') then
      vim.keymap.del('n', '<A-p>')
    end
    if string.find(alt_i_map_o, 'illuminate') then
      vim.keymap.del('o', '<A-i>')
    end
    if string.find(alt_i_map_x, 'illuminate') then
      vim.keymap.del('x', '<A-i>')
    end

    -- set better keymaps
    vim.keymap.set('n', '[r', illuminate.goto_prev_reference, {desc = 'vim-illuminate: Go to previous matching highlight text'})
    vim.keymap.set('n', ']r', illuminate.goto_next_reference, {desc = 'vim-illuminate: Go to next matching highlight text'})

    -- link highlight groups to lsp highlights
    vim.api.nvim_set_hl(0, 'IlluminatedWordText', {link='LspReferenceText'})
    vim.api.nvim_set_hl(0, 'IlluminatedWordRead', {link='LspReferenceRead'})
    vim.api.nvim_set_hl(0, 'IlluminatedWordWrite', {link='LspReferenceWrite'})


  end
}
