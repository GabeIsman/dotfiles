vim.api.nvim_create_user_command('JSONFormat', function()
  vim.cmd('%!python3 -m json.tool')
end, {})
