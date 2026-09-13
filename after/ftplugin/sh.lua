-- Note: shfmt's own default is tabs at width 8. These settings (2-space)
-- match common shell-script convention instead -- add `-i 2` to shfmt's
-- args in conform.lua if you want the formatter to match this too.
vim.bo.shiftwidth = 2
vim.bo.tabstop = 2
vim.bo.softtabstop = 2
vim.bo.expandtab = true
