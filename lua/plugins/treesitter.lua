return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {
          "c",
          "lua",
          "vim",
          "html",
          "java",
          "javascript",
          "typescript",
          "tsx",
          "json",
          "python",
          "rust",
          "toml"
        },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}
