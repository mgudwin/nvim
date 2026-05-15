-- ABOUTME: Live markdown preview in the browser via :MarkdownPreview.
-- ABOUTME: Builds the node app on install/update; loads on markdown filetype.

return {
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    ft = { 'markdown' },
    build = 'cd app && npm install',
    init = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end,
  },
}
