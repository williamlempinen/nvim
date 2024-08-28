local c = require("lualine.themes.catppuccin")

if c.normal.c then
  c.normal.c.bg = "#151515"
  c.normal.c.fg = "#504844"
end
if c.insert.c then
  c.insert.c.bg = "#151515"
  c.insert.c.fg = "#504844"
end
if c.visual.c then
  c.visual.c.bg = "#151515"
  c.visual.c.fg = "#504844"
end
if c.replace.c then
  c.replace.c.bg = "#151515"
  c.replace.c.fg = "#504844"
end
if c.command.c then
  c.command.c.bg = "#151515"
  c.command.c.fg = "#504844"
end
if c.inactive.c then
  c.inactive.c.bg = "#151515"
  c.inactive.c.fg = "#504844"
end

return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        theme = c, -- Use the customized Catppuccin theme
      },
    })
  end,
}

-- mocha = {
--            rosewater = "#ffc9c9",
--            flamingo = "#ff9f9a",
--            pink = "#ffa9c9",
--            mauve = "#df95cf",
--            lavender = "#a990c9",
--            red = "#ff6960",
--            maroon = "#f98080",
--            peach = "#f9905f",
--            yellow = "#f9bd69",
--            green = "#b0d080",
--            teal = "#a0dfa0",
--            sky = "#a0d0c0",
--            sapphire = "#95b9d0",
--            blue = "#7f98dd",
--            text = "#e0d0b0",
--            subtext1 = "#d5c4a1",
--            subtext0 = "#bdae93",
--            overlay2 = "#928374",
--            overlay1 = "#7c6f64",
--            overlay0 = "#665c54",
--            surface2 = "#504844",
--            surface1 = "#3a3634",
--            surface0 = "#252525",
--            base = "#151515",
--            mantle = "#0e0e0e",
--            crust = "#080808",
--          },
