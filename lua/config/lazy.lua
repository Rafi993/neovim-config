-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  { 'numToStr/Comment.nvim', opts = {} },
  require 'config.plugins.gitsigns',
  require 'config.plugins.which_keys',
  require 'config.plugins.telescope',
  require 'config.plugins.lsp',
  { 'Pocco81/auto-save.nvim' },
  require 'config.plugins.autoformat',
  require 'config.plugins.autocomplete',
  require 'config.plugins.theme',
  require 'config.plugins.todo',
  require 'config.plugins.mini',
  require 'config.plugins.lazygit',
  require 'config.plugins.treesitter',
  require 'config.plugins.neotree',
  'github/copilot.vim',
  require 'config.plugins.harpoon',
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {},
  },
})
