---@type ChadrcConfig 
 local M = {}
 M.ui = {
  theme = 'onedark',
  statusline = {
    theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
  }
}
 M.plugins = "custom.plugins"
 M.mappings = require "custom.mappings"
 M.lazy_nvim = require "custom.configs.lazy_nvim" -- config for lazy.nvim startup options
 return M
