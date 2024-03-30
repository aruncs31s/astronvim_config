-- Source https://github.com/AstroNvim/astrocommunity/blob/main/lua/astrocommunity/pack/java/init.lua

local utils = require "astronvim.utils"

return {
  {
  "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, { "java", "html" })
      end
    end,
    },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, { "jdtls", "lemminx" })
    end,
  },
  -- create autocmd to load main class configs on LspAttach.
  -- This ensures that the LSP is fully attached.
  -- See https://github.com/mfussenegger/nvim-jdtls#nvim-dap-configuration

    pattern = "*.java",
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          -- ensure that only the jdtls client is activated
          if client.name == "jdtls" then require("jdtls.dap").setup_dap_main_class_configs() end
        end,

}

