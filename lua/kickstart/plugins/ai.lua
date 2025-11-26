-- Run :Copilot auth to setup copilot directly with github copilot
return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {
        suggestions = {
          enabled = true,
          autotrigger = true,
          keymap = {
            accept = '<C-l>',
            next = '<C-j>',
            prev = '<C-k>',
          },
        },
        panel = { enabled = false },
      }
    end,
  },
}
