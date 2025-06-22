local awful = require('awful')
local wibox = require('wibox')

local module = require(... .. '.module')

return function(s)
   s.mypromptbox = awful.widget.prompt() -- Create a promptbox.

   -- Create the wibox
   s.mywibox = awful.wibar({
      position = 'top',
      screen   = s,
      widget   = {
         layout = wibox.layout.align.horizontal,
         -- Left widgets.
         {
            layout = wibox.layout.fixed.horizontal,
            module.launcher(),
            module.taglist(s),
            s.mypromptbox
         },
         module.tasklist(s),
         {
            layout = wibox.layout.fixed.horizontal,
            wibox.widget.systray(),
            wibox.widget.textclock('%H:%M'), -- Create a textclock widget.
            module.layoutbox(s)
         }
      }
   })
end
