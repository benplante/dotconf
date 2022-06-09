return function()
  local wk = require('which-key')
  wk.setup{
  
  }

  wk.register({
    f = {
      name = 'Telescope',
      f = {'<CMD>Telescope find_files<CR>', 'Find File' },
      }
    }, { prefix = '<leader>'})
end
