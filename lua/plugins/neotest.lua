return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "Issafalcon/neotest-dotnet",
  },

  opts = function()
    return {
      adapters = {
        require("neotest-dotnet")({
          dap = { justMyCode = false },
        }),
      },
    }
  end,

  keys = {
    { "<leader>n", desc = "🧪 Test" },

    {
      "<leader>nr",
      function()
        require("neotest").run.run()
      end,
      desc = "Run nearest test",
    },

    {
      "<leader>nf",
      function()
        require("neotest").run.run(vim.fn.expand("%"))
      end,
      desc = "Run current file",
    },

    {
      "<leader>na",
      function()
        require("neotest").run.run({ suite = true })
      end,
      desc = "Run all tests",
    },

    {
      "<leader>nd",
      function()
        require("neotest").run.run({ strategy = "dap" })
      end,
      desc = "Debug nearest test",
    },

    {
      "<leader>ns",
      function()
        require("neotest").run.stop()
      end,
      desc = "Stop test",
    },

    {
      "<leader>nn",
      function()
        require("neotest").run.attach()
      end,
      desc = "Attach to nearest test",
    },

    {
      "<leader>no",
      function()
        require("neotest").output.open()
      end,
      desc = "Show test output",
    },

    {
      "<leader>np",
      function()
        require("neotest").output_panel.toggle()
      end,
      desc = "Toggle output panel",
    },

    {
      "<leader>nv",
      function()
        require("neotest").summary.toggle()
      end,
      desc = "Toggle summary",
    },

    {
      "<leader>nc",
      function()
        require("neotest").run.run({
          suite = true,
          env = { CI = true },
        })
      end,
      desc = "Run all tests with CI",
    },
  },
}
