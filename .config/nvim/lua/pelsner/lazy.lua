local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "pelsner.plugins" }, { import = "pelsner.plugins.lsp" } }, {
	install = {
		colorscheme = { "nightfly" },
	},
	defaults = {
		version = "*",
	},
	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
})

vim.filetype.add({ extension = { templ = "templ" } })

vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*.templ",
	callback = function()
		vim.cmd("TSBufEnable highlight")
	end,
})
