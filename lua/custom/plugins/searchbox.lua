return {
  'VonHeikemen/searchbox.nvim',
  dependencies = {
    { 'MunifTanjim/nui.nvim' },
  },
  vim.keymap.set('n', '<leader>/', ':SearchBoxIncSearch<CR>'),
  vim.keymap.set('n', '<leader>R', ':SearchBoxReplace<CR>'),
}
