return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      -- garante que opts exista
      opts = opts or {}

      -- adiciona registries (mantém os defaults)
      opts.registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
      }

      return opts
    end,
  },
}
