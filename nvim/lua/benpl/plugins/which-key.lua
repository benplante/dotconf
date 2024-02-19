return {
  "folke/which-key.nvim",
  event  = "VeryLazy",
  opts = {
    plugins = {
      presets = {
        windows = true
      }
    },
    disable = {
      filetypes = { "TelescopePrompt" }
    }
  },
  config = function(_, opts)
    require("which-key").setup(opts)
    require("benpl.utils").which_key_register()
  end
}
