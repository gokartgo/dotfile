local ts_context_commentstring_status_ok, ts_context_commentstring = pcall(require, "ts_context_commentstring")
local comment_status_ok, comment = pcall(require, "Comment")

if not ts_context_commentstring_status_ok then
  vim.notify("ts_context_commentstring not found")
end

if not comment_status_ok then
  vim.notify("Comment not found")
  return
end

ts_context_commentstring.setup({
  enable_autocmd = false
})

comment.setup({
  ignore = '^$', -- ignore empty line
  pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook()
})
