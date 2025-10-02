local lspconfig = require("lspconfig")
local util = require("lspconfig.util")

lspconfig.protobuf_language_server = {
	default_config = {
		cmd = { "protobuf-language-server" },
		filetypes = { "proto", "cpp" },
		root_dir = util.root_pattern(".git", "."),
		single_file_support = true,
		settings = {
			["additional-proto-dirs"] = {
				-- Add paths here if needed
				-- "proto",
				-- "third_party",
			},
		},
	},
}

lspconfig.protobuf_language_server.setup({})
