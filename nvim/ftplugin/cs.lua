local set = require('benpl.utils').set_options

local options = {
  matchpairs = "(:),{:},[:],=:;",

  tabstop = 4,
  softtabstop = 4,
  shiftwidth = 4,
}

set('bo', options)
