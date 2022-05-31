local nvimtree = require("nvim-tree")

nvimtree.setup {
  disable_netrw = false,
  hijack_netrw = true,
  hijack_cursor = true,
  hijack_directories = {
    enable = true
  },
  update_cwd = true,
  git = {
    enable = true
  },
  view = {
    width = 50,
    side = "right",
    mappings = {
      list = {
        { key = {'o', '<CR>'}, action = 'edit_in_place' } 
      }
    }
  }
}

