vim.g.material_style = "darker"

require("material").setup({
  contrast = {
    terminal = false, -- Enable contrast for the built-in terminal
    sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
    floating_windows = false, -- Enable contrast for floating windows
    cursor_line = false, -- Enable darker background for the cursor line
    non_current_windows = false, -- Enable darker background for non-current windows
  },
  plugins = { -- Uncomment the plugins that you use to highlight them
    -- Available plugins:
    -- "dap",
    -- "dashboard",
    "gitsigns",
    -- "hop",
    -- "indent-blankline",
    "lspsaga",
    -- "mini",
    -- "neogit",
    -- "neorg",
    "nvim-cmp",
    -- "nvim-navic",
    "nvim-tree",
    "nvim-web-devicons",
    -- "sneak",
    "telescope",
    -- "trouble",
    -- "which-key",
  },
  disable = {
    colored_cursor = true, -- Disable the colored cursor
    borders = false, -- Disable borders between verticaly split windows
    background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
    term_colors = false, -- Prevent the theme from setting terminal colors
    eob_lines = false, -- Hide the end-of-buffer lines
  },
  high_visibility = {
    lighter = false, -- Enable higher contrast text for lighter style
    darker = true, -- Enable higher contrast text for darker style
  },
  lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )
  async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)
})

local status, _ = pcall(vim.cmd, "colorscheme material")
if not status then
  print("Material colorscheme not found. Colorscheme set to nightfly.") -- print error if colorscheme not installed
  vim.cmd("colorscheme nightfly")
  return
end

vim.g.material_style = "deep ocean"
