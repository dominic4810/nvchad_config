local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local pylint_options = {
  diagnostics_format = "[#{c}] #{m} (#{s})"
}

local sources = {
  lint.pylint.with(pylint_options),
  formatting.isort,
  formatting.yapf,
  formatting.clang_format,
  lint.cmake_lint,
  formatting.cmake_format,
  formatting.stylua
}

local on_attach = function(client, bufnr)
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

	--- toggle diagnostics
	vim.g.diagnostics_visible = true
	local function toggle_diagnostics()
		if vim.g.diagnostics_visible then
			vim.g.diagnostics_visible = false
			vim.diagnostic.disable()
		else
			vim.g.diagnostics_visible = true
			vim.diagnostic.enable()
		end
	end

  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set(
		"n",
		"<leader>ll",
		toggle_diagnostics,
		vim.tbl_extend("force", bufopts, { desc = "✨lsp toggle diagnostics" })
	)
end

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = on_attach,
}

