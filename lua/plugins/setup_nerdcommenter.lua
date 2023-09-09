-- Create default mappings
vim.g.NERDCreateDefaultMappings = 0

-- add spaces after comment delimiters by default
vim.g.NERDSpaceDelims = 1

-- use compact syntax for prettified multi-line comments
vim.g.NERDCompactSexyComs = 1

-- align line-wise comment delimiters flush left instead of following code indentation
-- let g:NERDDefaultAlign = 'left'

-- set a language to use its alternate delimiters by default
vim.g.NERDAltDelims_cpp = 1

-- add your own custom formats or override the defaults
-- vim.g.NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

-- allow commenting and inverting empty lines (useful when commenting a region)
vim.g.NERDCommentEmptyLines = 1

-- enable trimming of trailing whitespace when uncommenting
vim.g.NERDTrimTrailingWhitespace = 1

-- Enable NERDCommenterToggle to check all selected lines is commented or not
vim.g.NERDToggleCheckAllLines = 0
