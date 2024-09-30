vim.api.nvim_create_user_command("CloseHiddenBuffers", function()
	local buffers = vim.fn.getbufinfo({ buflisted = true })
	vim.tbl_map(function(bufinfo)
		if bufinfo.changed == 0 and (not bufinfo.windows or #bufinfo.windows == 0) then
			print(("Deleting buffer %d : %s"):format(bufinfo.bufnr, bufinfo.name))
			vim.api.nvim_buf_delete(bufinfo.bufnr, { force = false, unload = false })
		end
	end, buffers)
end, { desc = "Wipeout all buffers without a window" })

vim.api.nvim_set_keymap("n", "<leader>cb", ":CloseHiddenBuffers<cr>", { noremap = true })
