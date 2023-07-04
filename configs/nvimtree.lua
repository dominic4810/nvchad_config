local options = require "plugins.configs.nvimtree"

options.git = {
  enable = true
}
options.renderer.icons.show.git = true
options.disable_netrw = false
options.hijack_netrw = false

return options
