local nvim_autopairs_status_ok, nvim_autopairs = pcall(require, "nvim-autopairs")

if not nvim_autopairs_status_ok then
  vim.notify("nvim-autopairs not found")
  return
end

nvim_autopairs.setup {
  map_bs = false
}

_G.MUtils = {
  BS = function()
    if vim.fn.pumvisible() ~= 0 and vim.fn.complete_info({ 'mode' }).mode == 'eval' then
      return nvim_autopairs.esc('<c-e>') .. nvim_autopairs.autopairs_bs()
    else
      return nvim_autopairs.autopairs_bs()
    end
  end

}

-- The reason why we cannot use vim.keymap.set is because autopairs_bs() returns
-- the string ^GU<80>kb<80>kD, which is converted from <C-g>U<BS><Del> by
-- the function vim.api.nvim_replace_termcodes. This function returns a termcodes string,
-- which vim.keymap.set cannot interpret.
vim.api.nvim_set_keymap('i', '<BS>', 'v:lua.MUtils.BS()', { expr = true, noremap = true })

