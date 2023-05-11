local cmp = require "cmp"

vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
-- vim.g.copilot_tab_fallback = ""

local options = {
  mapping = {
    ["<C-j>"] = cmp.mapping(
      function(fallback)
        cmp.mapping.abort()
        local copilot_keys = vim.fn["copilot#Accept"]()
        if copilot_keys ~= "" then
          vim.api.nvim_feedkeys(copilot_keys, "i", true)
        else
          fallback()
        end
      end
    ),
    ["<C-Cr>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = false,
    },
    ["<CR>"] = {},
  }
}

return options
