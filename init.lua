vim.opt.mouse = "i"
vim.opt.clipboard = ""
vim.opt.foldmethod = "indent"
vim.opt.colorcolumn = "80,120"

vim.cmd([[
  augroup unfold_folds
    autocmd!
    autocmd BufWinEnter * normal! zR
  augroup END
]])
