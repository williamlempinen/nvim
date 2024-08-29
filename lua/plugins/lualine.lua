return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    { "projekt0n/github-nvim-theme" },
  },
  config = function()
    require("lualine").setup({})
    vim.cmd("colorscheme github_dark_dimmed")
  end,
}
