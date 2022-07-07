local db = require('dashboard')

-- db.preview_command = 'telescope'
db.custom_header = {
[[ ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
[[ ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
[[ ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
[[ ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
[[ ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
[[ ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
}
db.custom_center = {
  {desc = 'Find File          ', icon=' ', action = 'Telescope find_files'},
  {desc = 'Search Text        ', icon=' ', action = 'Telescope live_grep'},
  {desc = 'Recent Files       ', icon=' ', action = 'Telescope oldfiles'},
  {desc = 'Config             ', icon=' ', action = 'edit ~/.config/nvim/init.lua'},
}
db.custom_footer = {'Git gud.'}
