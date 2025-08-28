-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use({
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      requires = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- Optional image support in preview window: See `# Preview Mode` for more information
        -- { "3rd/image.nvim", config = function() require('image').setup({}) end },
        -- OR use snacks.nvim's image module:
        -- "folke/snacks.nvim",
      }
    })

  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

  -- Moonlight color scheme
  -- use 'shaunsingh/moonlight.nvim'

  use 'sheerun/vim-polyglot' -- Syntax highlight (it was not working for Elixir files)

  use 'tpope/vim-commentary'
  use 'tpope/vim-dadbod'
  use 'tpope/vim-surround'
  use 'itchyny/lightline.vim'

  use({
      "kdheepak/lazygit.nvim",
      -- optional for floating window border decoration
      requires = {
        "nvim-lua/plenary.nvim",
      },
    })

  use 'vim-test/vim-test'

  -- Lazy loading:
  -- Load on specific commands
  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  -- Load on an autocommand event
  use {'andymass/vim-matchup', event = 'VimEnter'}

  -- Load on a combination of conditions: specific filetypes or commands
  -- Also run code after load (see the "config" key)
  use {
    'w0rp/ale',
    ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
    cmd = 'ALEEnable',
    config = 'vim.cmd[[ALEEnable]]'
  }

  -- You can specify rocks in isolation
  -- use_rocks 'penlight'
  -- use_rocks {'lua-resty-http', 'lpeg'}

  -- Local plugins can be included
--  use '~/projects/personal/hover.nvim'

  -- Plugins can have post-install/update hooks
  ---- install without yarn or npm
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  -- Post-install/update hook with call of vimscript function with argument
  use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

  -- You can alias plugin names
  use {'dracula/vim', as = 'dracula'}

  -- fzf
	 use {'junegunn/fzf', dir = '~/.fzf', run = './install --all' }
	 use {'junegunn/fzf.vim'}
end, {
  luarocks = {
    python_cmd = 'python3'
  }
})
