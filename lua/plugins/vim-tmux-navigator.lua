return {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    keys = {
      { "<M-h>", "<cmd>TmuxNavigateLeft<cr>", mode = { "n", "t" }, desc = "Tmux left" },
      { "<M-j>", "<cmd>TmuxNavigateDown<cr>", mode = { "n", "t" }, desc = "Tmux down" },
      { "<M-k>", "<cmd>TmuxNavigateUp<cr>", mode = { "n", "t" }, desc = "Tmux up" },
      { "<M-l>", "<cmd>TmuxNavigateRight<cr>", mode = { "n", "t" }, desc = "Tmux right" },
    },
  },
}
