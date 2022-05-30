local pid = vim.fn.getpid()
local omnisharp_bin = "/home/bplante/.local/omnisharp/OmniSharp"
require('lspconfig').omnisharp.setup{
	cmd = {
		omnisharp_bin, "--languageserver", "--hostPID", tostring(pid)
	};
}
