require 'cairo'

function conky_main ()
  if conky_window == nil then
      return
  end

  local cs = cairo_xlib_surface_create (
    conky_window.display,
    conky_window.drawable,
    conky_window.visual,
    conky_window.width,
    conky_window.height)

  cr = cairo_create (cs)

  local updates = tonumber (conky_parse ('${updates}'))
  if updates > 5 then
      print ("hello world")
  end
  cairo_destroy (cr)
  cairo_surface_destroy (cs)
  cr = nil

  -- battery_icon
end

--[[ 
  Taken from the source code the possible battery_status values are:
    - charging
    - discharging
    - charged
    - not present
    - empty
    - unknown
--]]
function conky_battery_icon()
  local battery_status = conky_parse("$battery_status")
  local battery_percent = tonumber(conky_parse("$battery_percent"))

  -- use for debug
  print(battery_status)
  print(battery_percent)

  if (battery_status == "charging")
  then
    icon = "icons8-charging-battery-16.png";
  --battery_status return charged even though charger is plugged in
  elseif (battery_status == "charged")
  then
    icon = "icons8-charging-battery-16.png"; 
  elseif (battery_status == "discharging" and battery_percent > 90)
  then
    icon = "icons8-full-battery-16.png";
  elseif (battery_status == "discharging" and battery_percent > 70)
  then
    icon = "icons8-charged-battery-16.png";
  elseif (battery_status == "discharging" and battery_percent > 40)
  then
    icon = "icons8-battery-level-16.png";
  elseif (battery_status == "discharging" and battery_percent > 10)
  then
    icon = "icons8-low-battery-16.png";
  elseif (battery_status == "discharging" and battery_percent < 10)
  then
    icon = "icons8-empty-battery-16.png";
  else
    icon = "icons8-no-battery-16.png";
  end

  local icon_path = "/home/philippe/.config/conky/icons/" .. icon
  --image (icon_path)
  return("${image /home/philippe/.config/conky/icons/" .. icon .. "}");

end
