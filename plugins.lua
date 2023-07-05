local plugins = {
  -- Highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "python",
        "json",
        "yaml",
        "dockerfile",
        "cpp",
        "cmake",
      },
    },
  },
  -- Language server
  {
    "neovim/nvim-lspconfig",
    dependencies = {
       "jose-elias-alvarez/null-ls.nvim",
       config = function()
         require "custom.configs.null-ls"
       end,
     },
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "jedi-language-server",
        "black",
        "pylint",
        "isort",
        "bash-language-server",
        "lua-language-server",
        "clangd",
        "cpplint",
        "clang-format",
        "cmake-language-server",
        "cmakelint",
        "cmakelang"
      }
    }
  },
  -- file explorer
  {
    "nvim-tree/nvim-tree.lua",
    opts = function ()
      return require "custom.configs.nvimtree"
    end
  },
  -- Github Copilot
  {
    "github/copilot.vim",
    lazy = false
  },
  -- cmp with copilot
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    opts = function()
      local default_opts = require "plugins.configs.cmp"
      local custom_opts = require "custom.configs.cmp"
      return vim.tbl_deep_extend("force", default_opts, custom_opts)
    end,
  },
  -- vim surround
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },
  -- hop
  {
    "phaazon/hop.nvim",
    lazy = false,
    config = function()
      require("hop").setup()
    end
  },
  {
    "simrat39/symbols-outline.nvim",
    lazy = false,
    config = function()
      require("symbols-outline").setup()
    end
  },
  -- marks
  {
    "chentoast/marks.nvim",
    lazy=false,
    config = function()
      require("marks").setup()
    end
  }
}

return plugins
