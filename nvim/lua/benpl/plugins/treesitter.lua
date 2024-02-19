return {
  'nvim-treesitter/nvim-treesitter',
  build = function()
    require('nvim-treesitter.install').update({ with_sync = false })
  end,
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = {
        'c_sharp',
        'html',
        'javascript',
        'json',
        'json5',
        'lua',
        'typescript'
      },
      indent = {
        enable = true,
      },
      incremental_selection = {
        enable = true,
      },
      highlight = {
        enable = true,
      },
    })
  end
}
