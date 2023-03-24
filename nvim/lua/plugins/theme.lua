return {
  {
    "nyoom-engineering/oxocarbon.nvim",
    priority = 1000,
    config = function()
      vim.opt.background = 'dark'
    end
  },
  {
    "wuelnerdotexe/vim-enfocado",
    priority = 1000,
    config = function()
      vim.g.enfocado_style = "neon"
      vim.cmd [[ colorscheme enfocado ]]
    end
  }
}
