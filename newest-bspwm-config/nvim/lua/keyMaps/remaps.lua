vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)


local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }

vim.keymap.set("i", "<Tab>", function()
                if vim.fn['coc#pum#visible']() == 1 then
                    return vim.fn['coc#pum#confirm']();
                end
                return "\t"
            end, opts)

