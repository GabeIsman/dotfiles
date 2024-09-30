-- Toggle virutaltext on or off
local isLspDiagnosticsVisible = true

local toggleVirtualtextVisibility = function()
	isLspDiagnosticsVisible = not isLspDiagnosticsVisible
	vim.diagnostic.config({
		virtual_text = isLspDiagnosticsVisible,
		underline = isLspDiagnosticsVisible,
	})
end
toggleVirtualtextVisibility()
vim.keymap.set("n", "<leader>ls", toggleVirtualtextVisibility)

-- Open the floating window so you can read the whole message
vim.keymap.set("n", "<leader>lf", function()
	vim.diagnostic.open_float()
end)
