return {
  "lewis6991/hover.nvim",
  config = function()
    require("hover").setup({
      init = function()
        -- Require providers
        require("hover.providers.lsp")
        require("hover.providers.gh")
        require("hover.providers.gh_user")
        require("hover.providers.jira")
        require("hover.providers.fold_preview")
        require("hover.providers.diagnostic")
        require("hover.providers.man")
        require("hover.providers.dictionary")
      end,
      preview_opts = {
        border = "rounded",
      },
      preview_window = false,
      title = false,
      mouse_providers = {
        "LSP",
      },
      mouse_delay = 300,
    })

    vim.keymap.set("n", "<C-å>", function()
      require("hover").hover_switch("previous")
    end, { desc = "hover.nvim (previous source)" })

    vim.keymap.set("n", "<MouseMove>", require("hover").hover_mouse, { desc = "hover.nvim (mouse)" })
    vim.o.mousemoveevent = true
  end,
}
