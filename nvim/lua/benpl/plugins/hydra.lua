return {
  'anuvyklack/hydra.nvim',
  dependencies = {
    'jlanzarotta/bufexplorer',
    'sindrets/winshift.nvim',
    'mrjones2014/smart-splits.nvim',
    'anuvyklack/windows.nvim',
    'anuvyklack/middleclass',
  },
  enabled = false,
  event = 'VeryLazy',
  config = function()
    require('windows').setup()
    require('winshift').setup()
    require('smart-splits').setup({
      ignored_buftype = { 'neo-tree' }
    })

    local hydra = require('hydra')
    local splits = require('smart-splits')

    local window_hint = [[
 ^^^^^^     Move    ^^^^^^  ^^    Size    ^^   ^^     Split
 ^^^^^^-------------^^^^^^  ^^------------^^   ^^---------------
 ^ ^ _k_ ^ ^  ^ ^ _K_ ^ ^   _+_ _-_: height    _s_: horizontally
 _h_ ^ ^ _l_  _H_ ^ ^ _L_   _<_ _>_: width     _v_: vertically
 ^ ^ _j_ ^ ^  ^ ^ _J_ ^ ^   ^ _=_ ^: equalize  _q_: close
 focus^^^^^^  window^^^^^^  ^ _z_ ^: maximize  _b_: switch buffer
 ^ ^ ^ ^ ^ ^  ^ ^ ^ ^ ^ ^   ^^ ^          ^    _o_: close others
      ]]
    hydra({
      name = 'Windows',
      hint = window_hint,
      config = {
        invoke_on_body = true,
        hint = {
          border = 'rounded',
          offset = -1
        }
      },
      mode = 'n',
      body = '<C-w>',
      heads = {
        -- Move focus
        { 'h', '<C-w>h', { desc = 'Move focus left' } },
        { 'j', '<C-w>j', { desc = 'Move focus down' } },
        { 'k', '<C-w>k', { desc = 'Move focus up' } },
        { 'l', '<C-w>l', { desc = 'Move focus right' } },

        -- Move window
        { 'H', '<CMD>WinShift left<CR>',    { desc = 'Move window left' } },
        { 'J', '<CMD>WinShift down<CR>',    { desc = 'Move window down' } },
        { 'K', '<CMD>WinShift up<CR>',      { desc = 'Move window up' } },
        { 'L', '<CMD>WinShift right<CR>',   { desc = 'Move window right' } },

        -- Size
        { '+', function() splits.resize_up(2) end, { desc = 'Resize up' } },
        { '-', function() splits.resize_down(2) end, { desc = 'Resize down' }},
        { '<S-->', function() splits.resize_down(2) end, { desc = false }},
        { '<', function() splits.resize_left(2) end, { desc = 'Resize right' } },
        { '>', function() splits.resize_right(2) end, { desc = 'Resize left' } },
        { '=', '<C-w>=', { desc = 'equalize'} },
        { 'z', '<CMD>WindowsMaximize<CR>', { exit = true, desc = 'Maximize window' } },

        -- Split
        { 's', '<C-w>s', { desc = 'Split horizontally' } },
        { 'v', '<C-w>v', { desc = 'Split vertically' } },
        { 'q', '<CMD>try | close | catch | endtry<CR>', { exit = true, desc = 'Close window' } },
        { 'b', '<Cmd>BufExplorer<CR>', { exit = true, desc = 'Choose buffer' } },
        { 'o', '<C-w>o', { exit = true, desc = 'Close others' } },
        { '<Esc>', nil,  { exit = true, desc = false }}
      }
    })

    hydra({
      name = 'Side Scroll',
      mode = 'n',
      body = 'z',
      heads = {
        { 'h', '5zh', { desc = '←/→' } },
        { 'l', '5zl', { desc = '←/→' } },
        { 'H', 'zH', { desc = 'half screen ←/→' } },
        { 'L', 'zL', { desc = 'half screen ←/→' } },
      }
    })
  end,
}
