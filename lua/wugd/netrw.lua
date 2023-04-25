-- Netrw configuration file
--
-- Hide banner
vim.g.netrw_banner = 0

-- Tree style view
vim.g.netrw_liststyle = 3

-- Open in previous window
vim.g.netrw_browse_split = 4

-- Open with right splitting
vim.g.netrw_altv = 1

-- Set windows size
vim.g.netrw_winsize = 20

-- Keep the current directory and the broesing directory synced
-- This helps to avoid the move files error
vim.g.netrw_keepdir = 1

-- Show directoris first
vim.g.netrw_sort_sequence = "[\\/]$,*"

-- Human readable file size
vim.g.netrw_sizestyle = "H"

-- Hide files from gitignore
vim.g.netrw_list_hide = (vim.fn["netrw_gitignore#Hide"]()) .. [[,\(^\|\s\s\)\zs\.\S\+]]

-- Show hidden files 
--vim.g.netrw_hide = 0

-- Preview files in a vertical split window
vim.g.netrw_preview = 1

-- Open netrw on left side of the screen
vim.cmd [[
    augroup ProjectDrawer
        autocmd!
        autocmd VimEnter * :Vexplore
    augroup END
]]
