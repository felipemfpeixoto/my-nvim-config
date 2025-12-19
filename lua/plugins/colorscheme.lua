return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false, -- carrega imediatamente
    priority = 1000, -- garante que carrega antes de outros plugins
    config = function()
      require("kanagawa").setup({
        compile = false, -- true melhora performance, mas exige :KanagawaCompile
        undercurl = true,
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false, -- true se quiser fundo transparente
        dimInactive = false,
        terminalColors = true,

        colors = {
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },

        overrides = function(colors)
          return {}
        end,

        theme = "wave", -- wave | dragon | lotus
        background = {
          dark = "wave",
          light = "lotus",
        },
      })

      -- aplica o colorscheme
      vim.cmd("colorscheme kanagawa")
    end,
  },
}
