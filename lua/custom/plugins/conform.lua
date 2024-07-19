return {
  vim.api.nvim_create_user_command('FormatDisable', function(args)
    if args.bang then
      vim.b.disable_autoformat = true
    else
      vim.g.disable_autoformat = true
    end
  end, {
    desc = 'Disable autoformat-on-save',
    bang = true,
  }),
  vim.api.nvim_create_user_command('FormatEnable', function()
    vim.b.disable_autoformat = false
    vim.g.disable_autoformat = false
  end, {
    desc = 'Re-enable autoformat-on-save',
  }),
  vim.api.nvim_create_user_command('FormatToggle', function()
    if vim.b.disable_autoformat or vim.g.disable_autoformat then
      vim.b.disable_autoformat = false
      vim.g.disable_autoformat = false
    else
      vim.b.disable_autoformat = true
      vim.g.disable_autoformat = true
    end
  end, {
    desc = 'Toggle autoformat-on-save',
  }),
  vim.keymap.set('n', '<leader>ft', '<cmd>FormatToggle<cr>', {
    desc = 'Toggle autoformat-on-save',
  }),
  vim.keymap.set('n', '<leader>fd', '<cmd>FormatDisable<cr>', {
    desc = 'Disable autoformat-on-save',
  }),
  vim.keymap.set('n', '<leader>fe', '<cmd>FormatEnable<cr>', {
    desc = 'Enable autoformat-on-save',
  }),
}
