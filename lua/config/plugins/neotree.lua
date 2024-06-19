return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  events = 'VeryLazy',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
  },
  opts = {
    filesystem = {
      window = {
        position = 'left',
        mappings = {
          ['\\'] = 'close_window',
        },
        git_status = {
          symbols = {
            -- Change type
            added = '+', -- or "✚", but this is redundant info if you use git_status_colors on the name
            modified = '', -- or "", but this is redundant info if you use git_status_colors on the name
            deleted = '✖', -- this can only be used in the git_status source
            renamed = '󰁕', -- this can only be used in the git_status source
            -- Status type
            untracked = '',
            ignored = '',
            unstaged = '󰄱',
            staged = '',
            conflict = '',
          },
        },
      },
    },
  },
}
