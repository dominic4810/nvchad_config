local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local pylint_options = {
  diagnostics_format = "[#{c}] #{m} (#{s})"
}

local sources = {
  lint.pylint.with(pylint_options),
  formatting.isort,
  formatting.black
}


null_ls.setup {
  debug = true,
  sources = sources,
}

