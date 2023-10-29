local M = {}

-- hop mapping
M.hop = {
  n = {
    ["<leader><leader>w"] = {
      function()
        require('hop').hint_words({require('hop.hint').HintDirection.AFTER_CUROSR, current_line_only = false})
      end,
      "Hop by word, forwards"},
    ["<leader><leader>W"] = {
      function()
        require('hop').hint_words({require('hop.hint').HintDirection.BEFORE_CURSOR, current_line_only = false})
      end,
      "Hop by word, backwards"},
    ["<leader><leader>l"] = {
      function()
        require('hop').hint_lines({require('hop.hint').HintDirection.AFTER_CUROSR, current_line_only = false})
      end,
      "Hop by line, forwards"},
    ["<leader><leader>L"] = {
      function()
        require('hop').hint_lines({require('hop.hint').HintDirection.BEFORE_CURSOR, current_line_only = false})
      end,
      "Hop by line, backwards"},
    ["<leader><leader>c"] = {
      function()
        require('hop').hint_char1({require('hop.hint').HintDirection.AFTER_CUROSR, current_line_only = false})
      end,
      "Hop by char forwards"},
    ["<leader><leader>C"] = {
      function()
        require('hop').hint_char2({require('hop.hint').HintDirection.AFTER_CUROSR, current_line_only = false})
      end,
      "Hop by char backwards"},
    ["<leader><leader>p"] = {
      function()
        require('hop').hint_patterns({require('hop.hint').HintDirection.AFTER_CUROSR, current_line_only = false})
      end,
      "Hop by pattern, forwards"},
    ["<leader><leader>P"] = {
      function()
        require('hop').hint_patterns({require('hop.hint').HintDirection.BEFORE_CURSOR, current_line_only = false})
      end,
      "Hop by pattern, backwards"},
  },
  v = {
    ["<leader><leader>w"] = {
      function()
        require('hop').hint_words({require('hop.hint').HintDirection.AFTER_CUROSR, current_line_only = false})
      end,
      ""},
    ["<leader><leader>W"] = {
      function()
        require('hop').hint_words({require('hop.hint').HintDirection.BEFORE_CURSOR, current_line_only = false})
      end,
      "require('hop') by word"},
    ["<leader><leader>l"] = {
      function()
        require('hop').hint_lines({require('hop.hint').HintDirection.AFTER_CUROSR, current_line_only = false})
      end,
      "require('hop') by line"},
    ["<leader><leader>L"] = {
      function()
        require('hop').hint_lines({require('hop.hint').HintDirection.BEFORE_CURSOR, current_line_only = false})
      end,
      "require('hop') by line"},
    ["<leader><leader>c"] = {
      function()
        require('hop').hint_char1({require('hop.hint').HintDirection.AFTER_CUROSR, current_line_only = false})
      end,
      "require('hop') by char 1"},
    ["<leader><leader>C"] = {
      function()
        require('hop').hint_char2({require('hop.hint').HintDirection.AFTER_CUROSR, current_line_only = false})
      end,
      "require('hop') by char 2"},
    ["<leader><leader>p"] = {
      function()
        require('hop').hint_patterns({require('hop.hint').HintDirection.AFTER_CUROSR, current_line_only = false})
      end,
      "require('hop') by pattern"},
    ["<leader><leader>P"] = {
      function()
        require('hop').hint_patterns({require('hop.hint').HintDirection.BEFORE_CURSOR, current_line_only = false})
      end,
      "require('hop') by pattern"},
  },
}

-- symbols mapping
M.symbols = {
  n = {
    ["<leader>s"] = {"<cmd>SymbolsOutline<cr>", "Symbols Outline"},
  }
}

-- folding
M.folding = {
  n = {
    ["f"] = {"za", "Toggle fold"},
    ["F"] = {"zA", "Toggle all fold"},
    ["<leader>o"] = {"zM", "Close all fold"},
    ["<leader>O"] = {"zR", "Open all fold"},

  }
}

-- wraping
M.wrap = {
  n = {
    ["<leader>wy"] = {"<cmd>:set wrap<cr>", "Enable wrap"},
    ["<leader>wn"] = {"<cmd>:set nowrap<cr>", "Disable wrap"},
  }
}

-- moving tabs
M.tabs = {
  n = {
    ["<leader>mh"] = {
      function ()
        require("nvchad_ui.tabufline").move_buf(-1)
      end,
      "Move buffer left"
    },
    ["<leader>ml"] = {
      function ()
        require("nvchad_ui.tabufline").move_buf(1)
      end,
      "Move buffer right"
    },
    ["<leader>ma"] = {"<cmd>:tabnew<cr>", "Add tab"},
    ["<leader>md"] = {"<cmd>:tabclose<cr>", "Close tab"},
    ["<leader>mk"] = {"<cmd>:tabn<cr>", "Next tab"},
    ["<leader>mj"] = {"<cmd>:tabp<cr>", "Prev tab"},
  }
}

-- ChatGPT
M.ChatGPT = {
  n = {
    ["<leader>cg"] = {"<cmd>:ChatGPT<cr>", "ChatGPT"},
    ["<leader>ce"] = {"<cmd>:ChatGPTEditWithInstructions<cr>", "ChatGPT Edit with Instructions"},
  }
}

-- DAP
M.dap = {
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>", "Toggle breakpoint" },
    ["<leader>ds"] = { "<cmd> DapStepOver <CR>" , "Step over" },
    ["<leader>dr"] = { "<cmd> DapContinue <CR>" , "Start or continue the debugger" },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

return M
