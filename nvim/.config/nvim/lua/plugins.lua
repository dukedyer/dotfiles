-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
-- Only if your version of Neovim doesn't have https://github.com/neovim/neovim/pull/12632 merged

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'morhetz/gruvbox'
  use 'prabirshrestha/vim-lsp'
  use 'Shougo/deoplete.nvim'
  use 'lighttiger2505/deoplete-vim-lsp'
  use 'sbdchd/neoformat'
  use 'ryanoasis/vim-devicons'
  use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
  use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons', config = function() require'nvim-tree'.setup {} end}
    
end)

