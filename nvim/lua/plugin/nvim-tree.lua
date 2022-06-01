return function() 
  local nvimtree = require('nvim-tree')
  local map = require('util').map

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

  _G.NvimTreeConfig = {}

  function NvimTreeConfig.toggle_replace()
    local view = require('nvim-tree.view')
    if view.is_visible() then
      view.close()
    else
      nvimtree.open_replacing_current_buffer()
    end
  end
  map('n', '-', '<CMD>lua NvimTreeConfig.toggle_replace()<CR>')
  map('n', '<LEADER>nt', '<CMD>NvimTreeToggle<CR>')
end
