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
    'saadparwaiz1/cmp_luasnip',
    {
      "joeveiga/ng.nvim",
      lazy = true
    }
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

    local mlsp = require('mason-lspconfig')
    local lspconfig = require('lspconfig')
    local lspUtils = require("benpl.utils.lsp")

    mlsp.setup({
      ensure_installed = { "lua_ls", "omnisharp", "gopls", "angularls" }
    })

    mlsp.setup_handlers({
      function(server_name) lspconfig[server_name].setup(lspUtils.config(server_name)) end,
      ['angularls'] = function()
        local ng = require("ng")

        local on_attach = function(client, bufnr)
          local utils = require("benpl.utils")
          local maps = utils.empty_map_table()

          maps.n["<leader>lc"] = { function() ng.goto_template_for_component() end, desc = "Angular template" }
          maps.n["<leader>lC"] = { function() ng.goto_component_with_template_file() end, desc = "Angular component" }

          utils.set_mappings(maps, { buffer = bufnr })
          lspUtils.on_attach(client, bufnr)
        end
        lspconfig.angularls.setup({
          on_attach = on_attach,
          capabilities = lspUtils.capabilities,
          flags = lspUtils.flags
        })

      end
    })
  end
}


