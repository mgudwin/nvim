-- ABOUTME: Renders markdown buffers with headings, code blocks, tables, etc.
-- ABOUTME: Activates for markdown filetype using treesitter for parsing.

return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    ft = { 'markdown' },
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    opts = {},
  },
}
