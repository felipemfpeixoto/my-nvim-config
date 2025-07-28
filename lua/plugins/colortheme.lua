return { -- Colortheme github repo: https://github.com/rebelot/kanagawa.nvim?tab=readme-ov-file#color-palette
  'rebelot/kanagawa.nvim',
  priority = 1000, -- carregar antes de outros plugins
  lazy = false,
  config = function()
    require('kanagawa').setup {
      compile = false, -- defina como true se quiser compilar para maior performance
      undercurl = true,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false,
      dimInactive = false,
      terminalColors = true,
      theme = 'wave',
      background = {
        dark = 'wave',
        light = 'lotus',
      },
      colors = {
        palette = {
          -- sumiInk0 = "#000000",
          -- fujiWhite = "#FFFFFF",
        },
        theme = {
          wave = {
            ui = {
              float = {
                bg = 'none',
              },
            },
          },
          all = {
            ui = {
              bg_gutter = 'none',
            },
          },
        },
      },
      overrides = function(colors)
        local theme = colors.theme
        local c = require 'kanagawa.lib.color'

        local makeDiagnosticColor = function(color)
          return {
            fg = color,
            bg = c(color):blend(theme.ui.bg, 0.95):to_hex(),
          }
        end

        return {
          -- Floating windows
          NormalFloat = { bg = 'none' },
          FloatBorder = { bg = 'none' },
          FloatTitle = { bg = 'none' },
          LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
          MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

          -- Telescope
          TelescopeTitle = { fg = theme.ui.special, bold = true },
          TelescopePromptNormal = { bg = theme.ui.bg_p1 },
          TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
          TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
          TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
          TelescopePreviewNormal = { bg = theme.ui.bg_dim },
          TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },

          -- Completion popup
          Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
          PmenuSel = { fg = 'NONE', bg = theme.ui.bg_p2 },
          PmenuSbar = { bg = theme.ui.bg_m1 },
          PmenuThumb = { bg = theme.ui.bg_p2 },

          -- Diagnostics virtual text
          DiagnosticVirtualTextHint = makeDiagnosticColor(theme.diag.hint),
          DiagnosticVirtualTextInfo = makeDiagnosticColor(theme.diag.info),
          DiagnosticVirtualTextWarn = makeDiagnosticColor(theme.diag.warning),
          DiagnosticVirtualTextError = makeDiagnosticColor(theme.diag.error),

          -- Example custom HL group
          String = { fg = colors.palette.carpYellow, italic = true },
        }
      end,
    }

    -- define esquema de cores
    vim.cmd.colorscheme 'kanagawa'
  end,
}
