return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lua',
    'hrsh7th/cmp-nvim-lsp',
    {
      "L3MON4D3/LuaSnip",
      build = "make install_jsregexp"
    },
    'saadparwaiz1/cmp_luasnip'
  },
  event = { "BufReadPost", "BufNewFile" },
  cmd = { "LspInfo", "LspInstall", "LspUninstall" },
  config = function()
    local cmp = require('cmp')

    cmp.setup({
      completion = {
        completeopt = "menu,menuone,noinsert"
      },
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end
      },
      mapping = {
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        })
      },
      sources = cmp.config.sources({
        { name = 'nvim_lua' },
        { name = 'nvim_lsp' },
        { name = 'luasnip', option = { show_autosnippets = true } },
      })
    })

    local on_attach = function(client, bufnr)
      vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

      local bufopts = { noremap = true, silent = true, buffer = bufnr }
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, vim.tbl_extend(bufopts, { desc = 'Declaration' }))
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
      vim.keymap.set('n', 'gI', vim.lsp.buf.implementation, bufopts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
      vim.keymap.set('n', ';', vim.lsp.buf.hover, bufopts)
      vim.keymap.set('n', '<A-;>', vim.lsp.buf.signature_help, bufopts)
      vim.keymap.set('n', 'cr', vim.lsp.buf.rename, bufopts)
      vim.keymap.set('n', '<leader>;', vim.lsp.buf.code_action, bufopts)
    end

    local mlsp = require('mason-lspconfig')
    local lspconfig = require('lspconfig')

    mlsp.setup({
      ensure_installed = { "lua_ls", "omnisharp", "gopls", "angularls" }
    })

    mlsp.setup_handlers({
      function (server_name)
        lspconfig[server_name].setup({
          capabilities = require('cmp_nvim_lsp').default_capabilities(),
          on_attach = on_attach,
          flags = {
            debounce_text_changes = 150
          }
        })
      end,
      ['omnisharp'] = function()
        lspconfig.omnisharp.setup({
          --cmd = { "C:/Users/bakkenl/scoop/shims/OmniSharp.exe", "--languageserver", "--hostPID", tostring(pid) },
          capabilities = require('cmp_nvim_lsp').default_capabilities(),
          --root_dir = lspcfg_util.find_git_ancestor,
          flags = {
            debounce_text_changes = 150,
          }
        })
      end
    })
  end,
}

