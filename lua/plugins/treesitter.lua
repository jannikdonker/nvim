return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "lua", "javascript", "html", "css", "svelte", "rust", "typescript", "python" },
			auto_isntall = { enable = true },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
