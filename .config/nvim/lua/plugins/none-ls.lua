-- Customize None-ls sources

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  opts = function(_, config)
    local null_ls = require "null-ls"
    config.sources = {
      null_ls.setup {
        sources = {
          require "none-ls.diagnostics.eslint_d",
          require "none-ls.formatting.eslint_d",
          require "none-ls.code_actions.eslint_d",
        },
      },
    }
    return config
  end,
}
