-- ABOUTME: Inline Jupyter kernel execution for nvim (molten + image.nvim + jupytext).
-- ABOUTME: Renders cell output (text, plots, tables) above your code via Ghostty's kitty graphics.

return {
  {
    'benlubas/molten-nvim',
    version = '^1.0.0',
    dependencies = { '3rd/image.nvim' },
    build = ':UpdateRemotePlugins',
    init = function()
      vim.g.molten_image_provider = 'image.nvim'
      vim.g.molten_output_win_max_height = 20
      vim.g.molten_auto_open_output = true
      vim.g.molten_wrap_output = true
      vim.g.molten_virt_text_output = true
      vim.g.molten_virt_lines_off_by_1 = true
    end,
    keys = {
      { '<leader>mi', '<cmd>MoltenInit<cr>', desc = 'Molten: init kernel' },
      { '<leader>md', '<cmd>MoltenDeinit<cr>', desc = 'Molten: deinit kernel' },
      { '<leader>me', '<cmd>MoltenEvaluateOperator<cr>', desc = 'Molten: evaluate operator' },
      { '<leader>ml', '<cmd>MoltenEvaluateLine<cr>', desc = 'Molten: evaluate line' },
      { '<leader>mr', '<cmd>MoltenReevaluateCell<cr>', desc = 'Molten: re-evaluate cell' },
      { '<leader>mv', ':<C-u>MoltenEvaluateVisual<cr>gv', mode = 'v', desc = 'Molten: evaluate visual' },
      { '<leader>mo', '<cmd>MoltenShowOutput<cr>', desc = 'Molten: show output' },
      { '<leader>mh', '<cmd>MoltenHideOutput<cr>', desc = 'Molten: hide output' },
      { '<leader>mn', '<cmd>MoltenNext<cr>', desc = 'Molten: next cell' },
      { '<leader>mp', '<cmd>MoltenPrev<cr>', desc = 'Molten: prev cell' },
    },
  },

  {
    '3rd/image.nvim',
    build = false,
    opts = {
      backend = 'kitty',
      processor = 'magick_cli',
      max_width = 100,
      max_height = 12,
      max_height_window_percentage = 40,
      window_overlap_clear_enabled = true,
    },
  },

  {
    'GCBallesteros/jupytext.nvim',
    opts = {
      style = 'markdown',
      output_extension = 'md',
      force_ft = 'markdown',
    },
  },
}
