local M = {}

-- resize window
M.general = {
  n = {
    ["<C-S-Left>"] = {"<C-w><", "Resize split to left"},
    ["<C-S-Right>"] = {"<C-w>>", "Resize split to down"},
    ["<C-S-Up>"] = {"<C-w>+", "Resize split to up"},
    ["<C-S-Down>"] = {"<C-w>-", "Resize split to right"},
  }
}

-- hop mapping
M.hop = {
  n = {
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


return M
