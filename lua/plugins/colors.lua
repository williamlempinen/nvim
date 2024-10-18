return {
  {
    "Yazeed1s/minimal.nvim",
  },
  {
    "killitar/obscure.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  {
    {
      "vague2k/vague.nvim",
      config = function()
        require("vague").setup({
          -- optional configuration here
        })
      end,
    },
  },
  {
    "projekt0n/github-nvim-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require("github-theme").setup({})
      vim.cmd("colorscheme github_dark_default")
    end,
  },
}
