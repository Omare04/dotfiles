return {
	"johnseth97/codex.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("codex").setup({
			model = "gpt-5-codex",
			max_tokens = 300,
			temperature = 0.2,
		})

		vim.keymap.set("v", "<leader>cx", ":CodexAsk<CR>", { desc = "Ask Codex" })
		vim.keymap.set("n", "<leader>co", ":CodexToggle<CR>", { desc = "Toggle Codex" })
	end,
}
