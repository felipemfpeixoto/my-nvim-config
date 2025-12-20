return {
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<leader>fE",
        function()
          -- Abre o picker de arquivos:
          -- - hidden=true: mostra dotfiles (.gitignore, .env*, etc) sem precisar apertar Alt+h
          -- - ignored fica OFF por padrão (pra não poluir)
          --   e você liga quando precisar com Alt+i (toggle ignored)
          Snacks.picker.files({
            hidden = true,
            ignored = true,
          })
        end,
        desc = "Find Files (Hidden ON, toggle Ignored with Alt+i)",
      },
    },
  },
}
