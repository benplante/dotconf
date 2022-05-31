local telescope = require("telescope")

telescope.load_extension("file_browser")
telescope.load_extension("fzy_native")

telescope.setup {
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    }
  }
}

