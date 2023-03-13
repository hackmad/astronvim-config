return {
  {
    "bluz71/vim-moonfly-colors",
    config = function() vim.api.nvim_command "colorscheme moonfly" end,
  },
  { "puremourning/vimspector" },
  { "hashivim/vim-terraform" },
  { "dart-lang/dart-vim-plugin" },
  { "natebosch/vim-lsc" },
  { "natebosch/vim-lsc-dart" },
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "scalameta/nvim-metals",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "mfussenegger/nvim-dap",
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
      require("treesitter-context").setup {
        enable = true,
        max_lines = 0,
        trim_scope = "outer",
        min_window_height = 0,
        patterns = {
          default = {
            "class",
            "function",
            "method",
            "for",
            "while",
            "if",
            "switch",
            "case",
          },
          rust = {
            "impl_item",
            "struct",
            "enum",
            "function",
            "method",
            "loop",
            "for",
            "while",
            "if",
            "match",
          },
          markdown = {
            "section",
          },
          json = {
            "pair",
          },
          yaml = {
            "block_mapping_pair",
          },
        },
        exact_patterns = {
          -- Example for a specific filetype with Lua patterns
          -- Treat patterns.rust as a Lua pattern (i.e "^impl_item$" will
          -- exactly match "impl_item" only)
          -- rust = true,
        },
        -- [!] The options below are exposed but shouldn't require your attention,
        --     you can safely ignore them.

        zindex = 20, -- The Z-index of the context window
        mode = "cursor", -- Line used to calculate context. Choices: "cursor", "topline"
        -- Separator between context and content. Should be a single character string, like "-".
        -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
        separator = nil,
      }
    end,
  },
}
