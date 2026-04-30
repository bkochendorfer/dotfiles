local opt = vim.opt

-- nvim-tree requires netrw disabled
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

opt.guicursor = ""
opt.number = true
opt.relativenumber = true
opt.hidden = true
opt.smartindent = false
opt.errorbells = false
opt.wrap = false
opt.undodir = vim.fn.stdpath("data") .. "/undodir"
opt.undofile = true
opt.cmdheight = 1
opt.updatetime = 50
opt.backspace = "indent,eol,start"
opt.textwidth = 0
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.colorcolumn = "80"
opt.mouse = ""

vim.api.nvim_set_hl(0, "ColorColumn", { ctermbg = 0, bg = "lightgrey" })
