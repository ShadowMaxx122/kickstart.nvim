return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        filtered_items = {
          visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
          hide_dotfiles = false,
          hide_gitignored = true,
        },

        event_handlers = {

          {
            event = 'file_opened',
            handler = function(file_path)
              -- auto close
              -- vimc.cmd("Neotree close")
              -- OR
              require('neo-tree.command').execute { action = 'close' }
            end,
          },
        },
      },
      vim.keymap.set('n', '<leader>ff', ':Neotree filesystem reveal left<CR>', {}),
    }
  end,
}
