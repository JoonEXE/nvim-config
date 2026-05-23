require('nvim-treesitter').setup {
	ensure_installed = { "help", "javascript", "java", "python", "html", "c", "lua", "rust", "css", "cpp"},

	sync_install =  false,

	auto_install = true,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}

