require("bufferline").setup {
  options = {
    indicator = {style = 'icon', icon = '▎'},
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    color_icons = true,
    separator_style = 'slant',
    offsets = {{filetype = 'NvimTree', text = 'File Explorer', text_align = 'left'}}
  }
}

vim.cmd [[
nnoremap <silent><Tab> :BufferLineCycleNext<CR>
nnoremap <silent><S-Tab> :BufferLineCyclePrev<CR>
]]
