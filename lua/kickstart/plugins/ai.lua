-- Run :Copilot auth to setup copilot directly with github copilot
return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {
        panel = { enabled = false },
        suggestion = {
          enabled = false,
        },
        filetypes = {
          markdown = true,
          help = true,
        },
        next_edit_suggestion = {
          enabled = true,
          keymap = '<C-j>',
        },
      }
    end,
  },
  {
    'yetone/avante.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
      'nvim-tree/nvim-web-devicons',
      'stevearc/dressing.nvim',
      {
        'MeanderingProgrammer/render-markdown.nvim',
        opts = { file_types = { 'markdown', 'Avante' } },
        ft = { 'markdown', 'Avante' },
      },
    },
    build = 'make',
    opts = { provider = 'copilot' },
  },
}
