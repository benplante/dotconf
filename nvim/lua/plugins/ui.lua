return {
  {
    "nyoom-engineering/oxocarbon.nvim",
    priority = 1000,
  },
  {
    "folke/tokyonight.nvim"
  },
  {
    "folke/zen-mode.nvim",
    dependencies = {
      "folke/twilight.nvim"
    },
    keys = {
      { "<leader>z", function() require('zen-mode').toggle() end, desc = 'Zen Mode' }
    },
    config = function()
      require('zen-mode').setup({
        plugins = {
          kitty = {
            enabled = true,
            font = "+4"
          }
        }
      })
      require('twilight').setup()
    end
  },
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
    config = function()
      --vim.cmd [[ colorscheme moonfly ]]
    end,
  },
  {
    "sainnhe/sonokai",
    name = "sonokai",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd [[ colorscheme sonokai ]]
    end,
  },
  {
    "shaunsingh/seoul256.nvim",
    enabled = false,
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

      --require('seoul256')
    end,
  },
  {
    'stevearc/dressing.nvim'
  }
}
