return {
  "folke/snacks.nvim",
  opts = {
    explorer = {
      hidden = true, -- mostra dotfiles por padrão
      ignored = true, -- mostra arquivos ignorados por git por padrão
    },
    picker = {
      sources = {
        explorer = {
          hidden = true, -- garante que o picker explorer também já abra com dotfiles
          ignored = true, -- e git ignored
        },
      },
    },
  },
}
