local M = {}

function M.setup()
  local hl_groups = require('onedark.groups')

  if vim.g.colors_name then
    vim.cmd([[hi clear]])
    vim.cmd([[syn on]])
  end

  vim.o.termguicolors = true
  vim.g.colors_name = 'onedark'

  for _, group in pairs(hl_groups) do
    M.apply(group)
  end
end

function M.apply(group)
  for group_name, hl in pairs(group) do
    vim.api.nvim_set_hl(0, group_name, hl)
  end
end

return M
