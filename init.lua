require("joon")
pcall(require, "packer_compiled")
vim.cmd("PackerCompile")

vim.opt.tabstop = 4        -- how wide a tab LOOKS
vim.opt.shiftwidth = 4     -- indent size
vim.opt.expandtab = true   -- 🔑 use spaces instead of tabs
