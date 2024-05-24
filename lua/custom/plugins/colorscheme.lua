return {
  'folke/tokyonight.nvim',
  priority = 1000,
  config = function()
    local transparent = false -- set to true if you would like to enable transparency

    vim.cmd.colorscheme 'tokyonight-night'

    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'

    require('tokyonight').setup {
      style = 'night',
      transparent = transparent,
      styles = {
        sidebars = transparent and 'transparent' or 'dark',
        floats = transparent and 'transparent' or 'dark',
      },
      on_colors = function(colors)
        colors.bg_dark = transparent and colors.none or bg_dark
        colors.bg_float = transparent and colors.none or bg_dark
        colors.bg_sidebar = transparent and colors.none or bg_dark
        colors.bg_statusline = transparent and colors.none or bg_dark
      end,
    }

    vim.cmd 'colorscheme tokyonight'
  end,
}

