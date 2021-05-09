vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Essentials
  use 'bling/vim-airline'
  use 'scrooloose/nerdtree'
  use 'jistr/vim-nerdtree-tabs'

  -- Themes
  use 'MaxSt/FlatColor'
  use 'tomasr/molokai'
  use 'arcticicestudio/nord-vim'
  use 'ajh17/spacegray.vim'


  -- Linter and Language Server Protocol
  use 'neovim/nvim-lspconfig'
  use {
    'Shougo/deoplete.nvim',
    cmd = 'UpdateRemotePlugins'
  }
  use {
    'dense-analysis/ale',
    ft = {'sh', 'zsh', 'bash', 'cpp', 'cmake', 'html', 'markdown', 'vim', 'lua', 'javascript', 'typescript'},
    cmd = 'ALEEnable',
  }

  -- Javascript
  use { 'pangloss/vim-javascript', ft = {'javascript'} }
  use { 'MaxMEllon/vim-jsx-pretty', ft = {'javascript-react'} }

  -- HTML & Handlebars
  use { 'othree/html5.vim', ft = {'html'} }
  use { 'mustache/vim-mustache-handlebars', ft = {'handlebars', 'mustache'} }

  -- Rust
  use { 'rust-lang/rust.vim', ft = {'rust'} }

  -- Config
  use { 'cespare/vim-toml', ft = 'toml' }
end)
