return function()
  local cmp = require('cmp')

  cmp.setup {
    snippet = {
      expand = function(args)
        require'luasnip'.lsp_expand(args.body)
      end
    },

    mapping = {
      ['<Tab>'] = cmp.mapping.select_next_item(),
      ['<S-Tab>'] = cmp.mapping.select_prev_item(),
      ['<CR>'] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Replace,
        select = true,
      })
    },
    sources = {
      { name = 'luasnip' },
      { name = 'nvim_lsp' },
    }
  }

  local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'gI', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', ';', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<A-;>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', 'cr', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<leader>;', vim.lsp.buf.code_action, bufopts)
  end

  require('mason-lspconfig').setup {
    ensure_installed = { "lua_ls", "omnisharp" }
  }
  require('mason-lspconfig').setup_handlers {
    function (server_name)
      require('lspconfig')[server_name].setup {
          capabilities = require('cmp_nvim_lsp').default_capabilities(),
          on_attach = on_attach,
          flags = {
            debounce_text_changes = 150
          }
      }
    end
  }
end
