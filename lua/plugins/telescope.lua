return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make'
    },
    'nvim-telescope/telescope-ui-select.nvim',
  },
  config = function()
    require('telescope').setup({
      defaults = {
        file_ignore_patterns = { "%.git/", "node_modules" },
        layout_config = {
          horizontal = {
            preview_width = 0.55,
          },
        },
        vimgrep_arguments = {
          'rg',
          '--color=never',
          '--no-heading',
          '--with-filename',
          '--line-number',
          '--column',
          '--smart-case',
          '--hidden',
        },
      },
      pickers = {
        find_files = {
          hidden = true,
          follow = true,
          find_command = { 'fdfind', '--type', 'f', '--hidden', '--follow', '--exclude', '.git' },
        },
      },
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown {}
        }
      },
    })
    -- Load extensions
    require('telescope').load_extension('fzf')
    require('telescope').load_extension('ui-select')
  end,
}
