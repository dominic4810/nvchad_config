local options = require "plugins.configs.nvimtree"

options.git = {
  enable = true
}
options.renderer.icons.show.git = true
options.disable_netrw = true
options.hijack_netrw = true

options.renderer.icons.glyphs.folder.default = ""

options.view.adaptive_size = true

return options
