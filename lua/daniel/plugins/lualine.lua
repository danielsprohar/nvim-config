-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

lualine.setup({
  options = {
    theme = "material-nvim",
  },
})

-- local lualine_material_status, lualine_material = pcall(require, "lualine.themes.material")
-- if not lualine_material_status then
--   print("Could not set the lualine material theme")
--   return
-- end
--
-- lualine.setup({
--   options = {
--     theme = lualine_material,
--   },
-- })

-- local lualine_nightfly = require("lualine.themes.nightfly")
-- local new_colors = {
--   blue = "#65D1FF",
--   green = "#3EFFDC",
--   violet = "#FF61EF",
--   yellow = "#FFDA7B",
--   black = "#000000",
-- }
--
-- lualine_nightfly.normal.a.bg = new_colors.blue
-- lualine_nightfly.insert.a.bg = new_colors.green
-- lualine_nightfly.visual.a.bg = new_colors.violet
-- lualine_nightfly.command = {
--   a = {
--     gui = "bold",
--     bg = new_colors.yellow,
--     fg = new_colors.black, -- black
--   },
-- }
--
-- lualine.setup({
--   options = {
--     theme = lualine_nightfly,
--   },
-- })
