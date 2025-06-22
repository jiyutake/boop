local naughty = require('naughty')
naughty.connect_signal('request::display_error', function(message, startup)
   naughty.notification({
      urgency = 'critical',
      title   = 'no shit' .. (startup and ' during startup!' or '!'),
      message = message
   })
end)

require('awful.autofocus')
require('awful.hotkeys_popup.keys')
require('theme')
require('signal')
require('binds')
require('config.rules')
