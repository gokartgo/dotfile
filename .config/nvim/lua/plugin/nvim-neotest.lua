local neotest_status_ok, neotest = pcall(require, "neotest")
local neojest_status_ok, neojest = pcall(require, "neotest-jest")

if not neotest_status_ok then
  vim.notify("nvim-neotest not found")
  return
end

if not neojest_status_ok then
  vim.notify("neojest not found")
  return
end

neotest.setup({
  adapters = {
    require('neotest-jest')({
      jest_test_discovery = false,
      jestCommand = "npm test --",
      jestConfigFile = "jest.config.js",
      env = { CI = true },
      cwd = function(path)
        print(path)
        return vim.fn.getcwd()
      end,
    }),
    require('neotest-vitest')({
      filter_dir = function(name, rel_path, root)
        return name ~= "node_modules"
      end,
    })
  }
})
