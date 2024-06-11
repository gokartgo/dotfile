local neotest_status_ok, neotest = pcall(require, "neotest")

if not neotest_status_ok then
  vim.notify("nvim-neotest not found")
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

vim.keymap.set("n", "<leader>tr", function() neotest.run.run() end)
vim.keymap.set("n", "<leader>tf", function() neotest.run.run(vim.fn.expand("%")) end)
vim.keymap.set("n", "<leader>te", function() neotest.summary.toggle() end)
vim.keymap.set("n", "<leader>to", function() neotest.output_panel.toggle() end)
vim.keymap.set("n", "<leader>tc", function() neotest.output_panel.clear() end)
