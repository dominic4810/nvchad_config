local options = require "plugins.configs.nvimtree"

options.git = {
  enable = true
}
options.renderer.icons.show.git = true
options.disable_netrw = true
options.hijack_netrw = true

return options
