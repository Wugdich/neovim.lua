-- Set space as map leader
vim.g.mapleader = " "
-- Exit to treesitter (but not close the current file buffer I think)
vim.keymap.set("n", "<leader>pv", vim.cmd.Explore)

-- These remaps allow moving highlighting lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Remap allows cursor to stay at it initial position when using "J" key
-- (I don't know what exactly it does)
vim.keymap.set("n", "J", "mzJ'z")

-- Stay cursor at the middle when page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
--
-- Stay cursor at the middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Go back from definition
vim.keymap.set("n", "gb", "<C-o>")

-- Clip to system
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Shortcut for formatter if installed
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Some movements remaps
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Allows replace word under the cursor in the enitre file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Add double quote around the world under the cursor
vim.keymap.set("n", "<leader>q\"", "ciw\"\"<Esc>P")
-- or single quote
vim.keymap.set("n", "<leader>q\'", "ciw\'\'<Esc>P")

-- Comment (uncomment) highlighted lines on python
vim.keymap.set("v", "#", ":s/^/#/<cr>:noh<cr>")
vim.keymap.set("v", "-#", ":s/^#//<cr>:noh<cr>")
