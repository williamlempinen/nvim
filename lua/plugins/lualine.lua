return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    { "projekt0n/github-nvim-theme" },
  },
  config = function()
    require("lualine").setup({})
  end,
}
