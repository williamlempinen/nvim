local M = {}

M.CopyDiagnosticsToClipboard = function()
	local diagnostics = vim.diagnostic.get(0, { lnum = vim.fn.line(".") - 1 })

	if vim.tbl_isempty(diagnostics) then
		print("No diagnostics on this line")
		return
	end

	local messages = {}
	for _, diagnostic in ipairs(diagnostics) do
		table.insert(messages, diagnostic.message)
	end

	local diagnostic_text = table.concat(messages, "\n")
	vim.fn.setreg("+", diagnostic_text)
	print("Diagnostics copied to clipboard")
end

return M
