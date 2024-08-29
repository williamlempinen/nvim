return {
  {
    "projekt0n/github-nvim-theme",
    lazy = false,  -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("github-theme").setup({})
      vim.cmd("colorscheme github_dark_dimmed")
    end,
  },
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = { -- :h background
          light = "mocha",
          dark = "mocha",
        },
        transparent_background = false, -- disables setting the background color.
        show_end_of_buffer = true,  -- shows the '~' characters after the end of buffers
        term_colors = false,        -- sets terminal colors (e.g. `g:terminal_color_0`)
        dim_inactive = {
          enabled = false,          -- dims the background color of inactive window
          shade = "dark",
          percentage = 0.15,        -- percentage of the shade to apply to the inactive window
        },
        no_italic = true,           -- Force no italic
        no_bold = false,            -- Force no bold
        no_underline = false,       -- Force no underline
        styles = {                  -- Handles the styles of general hi groups (see `:h highlight-args`):
          comments = { "italic" },  -- Change the style of comments
          conditionals = { "italic" },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
          -- miscs = {}, -- Uncomment to turn off hard-coded styles
        },
        -- color_overrides = {
        --   mocha = {
        --     rosewater = "#ffc9c9",
        --     flamingo = "#ff9f9a",
        --     pink = "#ffa9c9",
        --     mauve = "#df95cf",
        --     lavender = "#a990c9",
        --     red = "#ff6960",
        --     maroon = "#f98080",
        --     peach = "#f9905f",
        --     yellow = "#f9bd69",
        --     green = "#b0d080",
        --     teal = "#a0dfa0",
        --     sky = "#a0d0c0",
        --     sapphire = "#95b9d0",
        --     blue = "#7f98dd",
        --     text = "#e0d0b0",
        --     subtext1 = "#d5c4a1",
        --     subtext0 = "#bdae93",
        --     overlay2 = "#928374",
        --     overlay1 = "#7c6f64",
        --     overlay0 = "#665c54",
        --     surface2 = "#504844",
        --     surface1 = "#3a3634",
        --     surface0 = "#252525",
        --     base = "#151515",
        --     mantle = "#0e0e0e",
        --     crust = "#080808",
        --   },
        -- },
        custom_highlights = {},
        default_integrations = true,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = true,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
          -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        },
      })

      --  vim.cmd.colorscheme("catppuccin")
    end,
  },
}
