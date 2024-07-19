return {
  'cbochs/grapple.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    lazy = true,
  },
  event = { 'BufReadPost', 'BufNewFile' },
  cmd = 'Grapple',
  keys = {
    { '<leader>Gt', '<cmd>Grapple toggle<CR>', desc = '[G]rapple [t]oggle tag' },
    { '<leader>GT', '<cmd>Grapple toggle_tags<CR>', desc = '[G]rapple open [T]ags window' },
    { '<leader>Gn', '<cmd>Grapple cycle_tags next<CR>', desc = '[G]rapple cycle next tag' },
    { '<leader>Gp', '<cmd>Grapple cycle_tags prev<CR>', desc = '[G]rapple cycle previous tag' },
  },
}
