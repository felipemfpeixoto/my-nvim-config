return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "Issafalcon/neotest-dotnet",
    },
    opts = function(_, opts)
      opts = opts or {}
      opts.adapters = opts.adapters or {}
      table.insert(opts.adapters, require("neotest-dotnet"))
      return opts
    end,
    keys = {
      {
        "<leader>dt",
        function()
          require("neotest").run.run({ strategy = "dap" })
        end,
        desc = "Debug nearest test (neotest + dap)",
      },
      {
        "<F6>",
        function()
          require("neotest").run.run({ strategy = "dap" })
        end,
        desc = "Debug nearest test (F6)",
      },
    },
  },
}
