return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup()

		vim.keymap.set("n", "<kPoint>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
		vim.keymap.set("n", "<kPlus>", function() harpoon:list():append() end)
		vim.keymap.set("n", "<kMinus>", function() harpoon:list():remove() end)

		vim.keymap.set("n", "<k1>", function() harpoon:list():select(1) end)
		vim.keymap.set("n", "<k2>", function() harpoon:list():select(2) end)
		vim.keymap.set("n", "<k3>", function() harpoon:list():select(3) end)
		vim.keymap.set("n", "<k4>", function() harpoon:list():select(4) end)
		vim.keymap.set("n", "<k5>", function() harpoon:list():select(5) end)
		vim.keymap.set("n", "<k6>", function() harpoon:list():select(6) end)
		vim.keymap.set("n", "<k7>", function() harpoon:list():select(7) end)
		vim.keymap.set("n", "<k8>", function() harpoon:list():select(8) end)
		vim.keymap.set("n", "<k9>", function() harpoon:list():select(9) end)

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<kDivide>", function() harpoon:list():prev() end)
		vim.keymap.set("n", "<kMultiply>", function() harpoon:list():next() end)
	end,
}