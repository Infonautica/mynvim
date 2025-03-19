return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "volar",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.volar.setup({
        capabilities = capabilities,
      })
      lspconfig.helm_ls.setup({
        -- capabilities = capabilities,
        settings = {
          ["helm-ls"] = {
            yamlls = {
              enabled = true,
              path = "yaml-language-server",
            },
          },
        },
      })
      lspconfig.yamlls.setup({
        on_attach = function(client, bufnr)
          if client.config.name == "yamlls" and vim.bo.filetype == "helm" then
            vim.lsp.buf_detach_client(bufnr, client.id)
          end
        end,
      })

      lspconfig.eslint.setup({})

      lspconfig.ts_ls.setup({
        capabilities = capabilities,

        init_options = {
          plugins = {
            {
              name = "@vue/typescript-plugin",
              location = "/Users/leoniddanilov/.nvm/versions/node/v20.18.0/lib/node_modules/@vue/typescript-plugin",
              languages = { "javascript", "typescript", "vue" },
            },
          },
        },
        filetypes = {
          "javascript",
          "typescript",
          "vue",
          "typescriptreact",
        },
      })
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.prettier,
          null_ls.builtins.completion.spell,

          -- requires none-ls-extras.nvim
          require("none-ls.diagnostics.eslint"),
          require("none-ls.code_actions.eslint"),
        },
      })
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    config = function()
      require("mason-null-ls").setup({
        automatic_installation = {
          "stylua",
          "prettier",
        },
        ensure_installed = {
          "stylua",
          "prettier",
        },
      })
    end,
  },
}
