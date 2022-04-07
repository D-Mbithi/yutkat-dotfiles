require("yanky").setup()
vim.api.nvim_set_keymap("n", "p", "<Plug>(YankyPutAfter)", {})
vim.api.nvim_set_keymap("n", "P", "<Plug>(YankyPutBefore)", {})
vim.api.nvim_set_keymap("x", "p", "<Plug>(YankyPutAfter)", {})
vim.api.nvim_set_keymap("x", "P", "<Plug>(YankyPutBefore)", {})
vim.api.nvim_set_keymap("n", "gp", "<Plug>(YankyGPutAfter)", {})
vim.api.nvim_set_keymap("n", "gP", "<Plug>(YankyGPutBefore)", {})
vim.api.nvim_set_keymap("x", "gp", "<Plug>(YankyGPutAfter)", {})
vim.api.nvim_set_keymap("x", "gP", "<Plug>(YankyGPutBefore)", {})
vim.api.nvim_set_keymap("n", "<C-p>", "<Plug>(YankyCycleForward)", {})
vim.api.nvim_set_keymap("n", "<C-n>", "<Plug>(YankyCycleBackward)", {})
vim.api.nvim_set_keymap("n", "y", "<Plug>(YankyYank)", {})
vim.api.nvim_set_keymap("x", "y", "<Plug>(YankyYank)", {})
