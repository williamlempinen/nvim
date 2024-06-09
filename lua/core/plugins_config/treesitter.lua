require"nvim-treesitter.configs".setup {
  ensure_installed = { "c", "lua", "vim", "html", "java", "javascript", "typescript", "json" },
  sync_installed = false,
  auto_installed = true,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}










