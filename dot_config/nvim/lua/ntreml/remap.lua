vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "File Explorer" })

-- LSP Bindings
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "[G]oto [D]eclaration" })

vim.keymap.set("n", '<leader>lr', vim.lsp.buf.rename, { desc = '[R]ename' })
vim.keymap.set("n", '<leader>la', vim.lsp.buf.code_action, { desc = 'Code [A]ction' })
vim.keymap.set("n", '<leader>lf', vim.lsp.buf.format, { desc = '[F]ormat' })
vim.keymap.set("n", '<leader>li', vim.lsp.buf.implementation, { desc = '[I]mplementation' })
vim.keymap.set("n", '<leader>lc', vim.lsp.buf.incoming_calls, { desc = 'Incoming [C]alls' })
vim.keymap.set("n", '<leader>lR', vim.lsp.buf.references, { desc = '[R]eferences' })

-- Diagnostics
vim.keymap.set('n', '<leader>ld', vim.diagnostic.open_float, { desc = 'Open floating [d]iagnostic message' })
vim.keymap.set('n', '<leader>ll', vim.diagnostic.setloclist, { desc = 'Open diagnostics [l]ist in this buffer' })
vim.keymap.set('n', '<leader>lD', vim.diagnostic.setqflist, { desc = 'Open [D]iagnostics list' })
