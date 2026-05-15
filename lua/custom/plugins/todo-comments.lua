-- ABOUTME: Highlights TODO/FIXME/NOTE/etc. tags inside code comments.
-- ABOUTME: Signs disabled; relies on syntax highlighting only.

return {
  -- Highlight todo, notes, etc in comments
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
}
