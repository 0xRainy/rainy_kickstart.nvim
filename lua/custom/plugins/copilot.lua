return {
  'github/copilot.vim',
  event = 'InsertEnter',
  vim.keymap.set('i', '<M-k>', 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false, silent = true }),
  vim.keymap.set('i', '<M-l>', 'copilot#AcceptWord("\\<CR>")', { expr = true, replace_keycodes = false, silent = true }),
  vim.keymap.set('i', '<M-j>', 'copilot#AcceptLine("\\<CR>")', { expr = true, replace_keycodes = false, silent = true }),
}
