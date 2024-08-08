local cpp = require('util.compile_and_run.cpp')

local function compile_and_run()
  local file_name = vim.fn.expand('%')

  if string.match(file_name, '%.cpp$') then
    cpp(file_name)
  else
    vim.notify('File not match', vim.log.levels.INFO)
  end
end

-- Map keys to compile and run current file
vim.keymap.set('n', '<F5>', compile_and_run, { noremap = true, silent = true })

