-- Enable relative number
vim.opt.relativenumber = true

-- [[ Install `lazy.nvim` plugin manager ]]
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ 'git', 'clone', '--filter=blob:none', '--branch=stable', 'https://github.com/folke/lazy.nvim.git', lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
require('lazy').setup({
  {
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      -- Load the colorscheme
      vim.cmd.colorscheme('tokyonight-moon')
    end,
  },
})
