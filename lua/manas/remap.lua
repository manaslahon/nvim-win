vim.g.mapleader = '\\'
vim.keymap.set("n", "<leader>f", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") --move codeblocks or lines up or down
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")
vim.keymap.set("x", "<leader>p", "\"_dP")

--remap existing maps
vim.keymap.set("i", "jj", "<Esc>", {noremap = true, silent = true})
vim.keymap.set("n", "<C-d>", "$", {noremap = true, silent = true})
vim.keymap.set("n", "<C-f>", "_", {noremap = true, silent = true})

--yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>c", function()
	vim.lsp.buf.format()  --formats the file

end)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) --searches and replace the word I am currently on
