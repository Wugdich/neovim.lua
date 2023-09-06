a.nvim_create_autocmd( { "BufWritePre" }, {
  pattern = { "*.py" },
  command = [[ !/bin/black % ]],
})
