vim.opt.number = true -- will show line number
vim.opt.relativenumber = true -- will make the numbers relative for easier navigation


vim.schedule(function()
  vim.o.clipboard = 'unnamedplus' -- will use the system clipboard. it is being scheduled because it can increase startup time
end)


vim.opt.cursorline = true -- will highlight the line the cursor is currently one
vim.opt.mouse = 'a' --will enable mouse

-- highlight text when copying
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when copying text',
  group = vim.api.nvim_create_augroup('highlight-yanked-text', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
