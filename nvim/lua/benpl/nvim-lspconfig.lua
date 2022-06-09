return function()
  local lspconfig = require('lspconfig')
  local cmp = require('cmp')

  local pid = vim.fn.getpid()

  local omnisharp_bin = lspconfig.util.path.join { vim.fn.stdpath('data'), 'site/omnisharp/run' }

  cmp.setup {
    mapping = {
      ['<Tab>'] = cmp.mapping.select_next_item(),
      ['<S-Tab>'] = cmp.mapping.select_prev_item(),
      ['<CR>'] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Replace,
        select = true,
      })
    },
    sources = {
      { name = 'nvim_lsp' },
    }
  }

  lspconfig.omnisharp.setup {
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    on_attach = function(_, bufnr)
      vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    end,
    --cmd = { omnisharp_bin, '--languageserver', '--hostPID', tostring(pid) }
  }
end
