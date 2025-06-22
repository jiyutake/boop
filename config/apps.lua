-- default applications to use.
local apps = {}
apps.terminal   = 'wezterm'
apps.editor     = 'mrcode'
apps.editor_cmd = apps.terminal .. ' -e ' .. apps.editor
require('menubar').utils.terminal = apps.terminal
return apps