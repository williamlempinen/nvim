return {
  { "rebelot/kanagawa.nvim" },
  { "rose-pine/neovim",     name = "rose-pine" },
  { "kvrohit/rasmus.nvim" },
  {
    "killitar/obscure.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "vague2k/vague.nvim",
    config = function()
      require("vague").setup({})
    end,
  },
  {
    "projekt0n/github-nvim-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require("github-theme").setup({})
    end,
  },
}
