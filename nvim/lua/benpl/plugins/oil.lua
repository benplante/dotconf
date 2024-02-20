return {
  "stevearc/oil.nvim",
  enabled = true,
  opts = {
    keymaps = {
      ["<bs>"] = "actions.parent",
      ["_"] = "actions.close"
    }
  },
  dependencies = { "nvim-tree/nvim-web-devicons" }
}
