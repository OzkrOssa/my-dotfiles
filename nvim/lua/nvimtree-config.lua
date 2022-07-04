require("nvim-tree").setup()

vim.api.nvim_set_keymap('n', '<A-|>', ":NvimTreeToggle<CR>", { noremap = true })