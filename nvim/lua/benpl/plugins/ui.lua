return {
  {
    "neanias/everforest-nvim",
    main = "everforest",
    lazy = true,
    priority = 1000,
    opts = { }
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = true,
    priority = 1000
    --config = function() vim.cmd [[colorscheme oxocarbon]] end
  },
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    lazy = true
  },
  {
    "folke/zen-mode.nvim",
    lazy = true,
    dependencies = {
      "folke/twilight.nvim"
    },
    keys = {
      { "<leader>z", function() require("zen-mode").toggle() end, desc = "Zen Mode" }
    },
    config = function()
      require("zen-mode").setup({
        plugins = {
          kitty = {
            enabled = true,
            font = "+4"
          }
        }
      })
      require("twilight").setup()
    end
  },
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = true,
    priority = 1000,
    config = function()
--      vim.cmd [[ colorscheme moonfly ]]
    end,
  },
  {
    "sainnhe/sonokai",
    name = "sonokai",
    lazy = true,
    priority = 1000
  },
  {
    "shaunsingh/seoul256.nvim",
    lazy = true,
    priority = 1000,
    config = function()
      vim.g.seoul256_italic_comments = true
      vim.g.seoul256_italic_keywords = true
      vim.g.seoul256_italic_functions = false
      vim.g.seoul256_italic_variables = false
      vim.g.seoul256_contrast = true
      vim.g.seoul256_borders = true
      vim.g.seoul256_disable_background = false
      vim.g.seoul256_hl_current_line = true

      --require("seoul256")
    end,
  },
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy"
  },
  {
    "j-hui/fidget.nvim",
    event = "VeryLazy",
    opts = { }
  },
  {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",
    opts = { }
  }
}
