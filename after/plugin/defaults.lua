-- <leader>f runs dart format on the file currently being edited
-- in general, this should be used for running some native formatting tool through the shell
vim.keymap.set('n', '<leader>f', function()
	local filename = vim.fn.expand('%')
	if filename:match "%.dart$" then
		vim.cmd("write")
		os.execute("dart format " .. filename)
		vim.cmd("edit")
	else
		print("file " .. filename .. " not supported for formatting")
	end
end)

