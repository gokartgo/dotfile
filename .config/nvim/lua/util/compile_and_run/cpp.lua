local function cpp(file_name)
  local cwd = vim.fn.getcwd()
  local exe_name = string.gsub(file_name, '%.cpp$', '')

  vim.cmd('w') -- Save the file

  local compile_cmd = 'g++ -std=c++11 -Wall -Wextra -Wpedantic -O2 -o ' .. exe_name .. ' ' .. file_name
  local output = vim.fn.system(compile_cmd)

  if vim.v.shell_error == 0 then
    local run_cmd = 'osascript -e \'tell application "iTerm" to create window with default profile\'' ..
        ' -e \'tell application "iTerm" to tell current session of current window to write text "' ..
        'cd ' .. cwd .. ' && ' .. exe_name .. '"\''

    vim.fn.system(run_cmd)
    vim.cmd('redraw!')
  else
    vim.notify('Compile error :' .. output, vim.log.levels.ERROR)
  end
end

return cpp
