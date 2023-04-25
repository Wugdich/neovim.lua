vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

-- TODO: ftplugin, different tab spaces for different langs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- Better Netrw
vim.g.netrw_banner = 0 --Hide banner
vim.g.netrw_liststyle = 3 --Tree style view
vim.g.netrw_browse_split = 4 --Open in previous window
vim.g.netrw_altv = 1 -- Open with right splitting
vim.g.netrw_winsize = 20
vim.cmd [[
    augroup ProjectDrawer
        autocmd!
        autocmd VimEnter * :Vexplore
    augroup END
]]
