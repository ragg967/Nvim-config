return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',  -- Updated to latest stable
  dependencies = { 
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make'
    }
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
    })
    -- Load fzf extension
    require('telescope').load_extension('fzf')
  end,
}
