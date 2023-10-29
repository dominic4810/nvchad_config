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
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
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
        "stylua",
        "clangd",
        "clang-format",
        "cmake-language-server",
        "codelldb",
      },
    },
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function() end,
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function()
      return require "custom.configs.rust-tools"
    end,
    config = function(_, opts)
      require("rust-tools").setup(opts)
    end,
  },
  -- DAP for debugging
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require "dap"
      local dapui = require "dapui"
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {},
    },
  },
  {
    "mfussenegger/nvim-dap",
    config = function(_, _)
      require("core.utils").load_mappings "dap"
    end,
  },
  -- file explorer
  {
    "nvim-tree/nvim-tree.lua",
    opts = function()
      return require "custom.configs.nvimtree"
    end,
  },
  -- Github Copilot
  {
    "github/copilot.vim",
    lazy = false,
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
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  -- hop
  {
    "phaazon/hop.nvim",
    lazy = false,
    config = function()
      require("hop").setup()
    end,
  },
  -- leap
  {
    "ggandor/leap.nvim",
    lazy = false,
    config = function()
      require("leap").add_default_mappings()
    end,
  },
  -- symbols
  {
    "simrat39/symbols-outline.nvim",
    lazy = false,
    config = function()
      require("symbols-outline").setup()
      require "custom.configs.symbols-outline"
    end,
  },
  -- marks
  {
    "chentoast/marks.nvim",
    lazy = false,
    config = function()
      require("marks").setup()
    end,
  },
  -- ChatGPT
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup(require "custom.configs.chatgpt")
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
}

return plugins
