
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<leader>pr', function()
	vim.lsp.buf.rename(vim.fn.input("Replace > "))
end)
