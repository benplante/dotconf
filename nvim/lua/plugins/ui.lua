return {
  {
    "nyoom-engineering/oxocarbon.nvim",
    priority = 1000,
  },
  {
    "NLKNguyen/papercolor-theme",
    priority = 1000,
  },
  {
    "junegunn/seoul256.vim",
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
      require('zen-mode').setup()
      require('twilight').setup()
    end
  },
  {
    "wuelnerdotexe/vim-enfocado",
    priority = 1000,
    config = function()
      vim.opt.background = 'dark'
      vim.g.enfocado_style = "nature"
      vim.cmd [[ colorscheme enfocado ]]
    end
  },
  {
    'stevearc/dressing.nvim'
  }
}
