return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- configure treesitter
    treesitter.setup({ -- enable syntax highlighting
      sync_install = false,
      highlight = {
        enable = true,
      },
      -- enable indentation
      indent = {
        enable = true,
      },
      -- enable autotagging (w/ nvim-ts-autotag plugin)
      autotag = {
        enable = true,
      },
      -- ensure these language parsers are installed
      ensure_installed = {
        "angular",
        "bash",
        "c",
        "css",
        "cpp",
        "dockerfile",
        "gitignore",
        "graphql",
        "go",
        "html",
        "json",
        "javascript",
        "lua",
        "markdown",
        "markdown_inline",
        "php",
        "prisma",
        "python",
        "query",
        "typescript",
        "tsx",
        "vim",
        "vimdoc",
        "yaml",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}