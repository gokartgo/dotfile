vim.g.VM_default_mappings = 0
vim.g.VM_mouse_mappings = 0
vim.g.VM_add_cursor_at_pos_no_mappings = 1
vim.g.VM_highlight_matches = 'underline'

vim.g.VM_leader = ','

local leader = vim.g.VM_leader

vim.g.VM_maps = {
  ['Add Cursor At Pos'] = leader .. ',',
  ['Add Cursor Down']   = leader .. 'j',
  ['Add Cursor Up']     = leader .. 'k',
  ['Find Next']         = 'n',
  ['Find Prev']         = 'N',
  ['Seek Up']           = '', -- go to previous page in same file for the file bigger than 1 screen
  ['Seek Down']         = '', -- go to next page in same file for the file bigger than 1 screen
  ['Increase']          = '<C-y>',
  ['Decrease']          = '<C-x>',
  ['gIncrease']         = 'g<C-y>',
  ['gDecrease']         = 'g<C-x>',
  ['Select l']          = '',
  ['Select h']          = '',
  ['Toggle Mappings']   = leader .. '<space>',
}
