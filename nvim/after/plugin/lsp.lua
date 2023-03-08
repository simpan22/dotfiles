local lsp = require('lsp-zero')
local inlay = require("inlay-hints")

lsp.preset('recommended')
lsp.ensure_installed({
    'tsserver',
    'eslint',
    'rust_analyzer',
    'sumneko_lua'
})

-- TODO: This does not seem to work
lsp.configure('rust_analyzer', {
    settings = {
        ["rust-analyzer"] = {
            cargo = {
                features = 'all'
            },
            diagnostics = {
                enable = false
            }
        },
    }
})

lsp.nvim_workspace()

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select)
})

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set('n', 'gr', function() vim.lsp.buf.references() end, opts)
    vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set('n', 'rn', function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format({ async = true }) end, opts)
    vim.keymap.set('n', '<leader>e', function() vim.diagnostic.open_float({ "line" }) end, opts)

end)


lsp.setup({
    mapping = cmp_mappings
})


vim.diagnostic.config({
    virtual_text = true
})

inlay.setup()
