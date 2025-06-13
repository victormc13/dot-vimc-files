-- Set line numbers and relative numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- Show matching brackets/parentheses
vim.opt.showmatch = true

-- Use spaces instead of tabs for indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- Highlight current line
vim.opt.cursorline = true

-- Enable basic auto-indentation
vim.opt.autoindent = true

-- Remove trailing whitespace on save
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = '*',
    command = ':%s/\\s\\+$//e',
})

-- Improve search highlighting
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Set colorscheme and syntax color
vim.cmd('syntax on')
vim.cmd('colorscheme wildcharm')
vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' })
vim.cmd('hi Normal ctermbg=NONE')

-- Enables mouse usage
vim.opt.mouse = 'a'
