-- Hide line numbers and gutter signs/icons in inactive windows
-- See https://superuser.com/questions/385553/making-the-active-window-in-vim-more-obvious
local bghighlight_group = vim.api.nvim_create_augroup('BgHighlight', {})
vim.api.nvim_create_autocmd('WinEnter', {
  group = bghighlight_group,
  command = "set number",
})
vim.api.nvim_create_autocmd('WinEnter', {
  group = bghighlight_group,
  command = "set relativenumber",
})
vim.api.nvim_create_autocmd('WinEnter', {
  group = bghighlight_group,
  command = "set signcolumn=yes",
})
vim.api.nvim_create_autocmd('WinLeave', {
  group = bghighlight_group,
  command = "set nonumber",
})
vim.api.nvim_create_autocmd('WinLeave', {
  group = bghighlight_group,
  command = "set norelativenumber",
})
vim.api.nvim_create_autocmd('WinLeave', {
  group = bghighlight_group,
  command = "set signcolumn=no",
})
