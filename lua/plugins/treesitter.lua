return {
	"nvim-treesitter/nvim-treesitter", 
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		vim.keymap.set("n", "<C-t>", ":Neotree toggle<CR>")

		configs.setup({
			ensure_installed = {"lua", "javascript", "html", "css", "rust", "typescript", "python"},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
