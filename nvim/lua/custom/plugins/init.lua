-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  --Tmux integration
  'christoomey/vim-tmux-navigator',
  -- Git integration
  'f-person/git-blame.nvim',
  {
    'tpope/vim-fugitive',
    config = function()
      vim.keymap.set('n', '<leader>gs', '<cmd>0G<cr>', { desc = 'Git status' })
      vim.keymap.set('n', '<leader>gb', '<cmd>GitBlameToggle<cr>', { desc = 'Git blame' })
      vim.keymap.set('n', '<leader>gd', '<cmd>Gvdiffsplit<cr>', { desc = 'Diff' })
    end,
  },
  -- Make links shift-clickable
  'tpope/vim-rhubarb',
  -- File tree
  {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
    },
    config = function()
      require('neo-tree').setup {
        position = 'left',
        filesystem = {
          filtered_items = {
            hide_by_pattern = {
              '*_templ.go',
            },
          },
        },
      }
      vim.keymap.set('n', '<leader>t', '<cmd>Neotree toggle<CR>', { desc = '[T]oggle tree' })

      vim.cmd [[
            highlight NeoTreeNormal guibg=NONE ctermbg=NONE
            highlight NeoTreeNormalNC guibg=NONE ctermbg=NONE
        ]]
    end,
  },
  {
    'aiken-lang/editor-integration-nvim',
    dependencies = {
      'neovim/nvim-lspconfig',
    },
    config = function()
      require('lspconfig').aiken.setup {}
    end,
  },
}
