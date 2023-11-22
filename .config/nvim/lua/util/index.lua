vim.g.get_visual_selection = function()
	vim.cmd('noautocmd normal! "vy"')

	local text = vim.fn.getreg('v')

	vim.fn.setreg('v', {})
	text = string.gsub(text, "\n", "")

	if #text > 0 then
		return text
	else
		return ''
	end
end

