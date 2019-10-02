# Conky status bar

## Prerequisites

Install [Conky](https://github.com/brndnmtthws/conky)

## Usage
The conky `battery_status` is counter-intuitive so I've documented the different states here along with the correct icon to display

|is the battery plugged in?|is the charger plugged in?|`battery_status`|`battery_percent` (as `bp`)|icon|
|---|---|---|---|---|
|yes|no|`charging`||![charging.png](./icons/icons8-charging-battery-16.png)|
|yes|yes|`charged`|`bp` = 100|![chargin.png](./icons/icons8-charging-battery-16.png)|
|yes|no|`discharging`|`bp` > 90|![full.png](./icons/icons8-full-battery-16.png)|
|yes|no|`discharging`|70 < `bp` < 90|![charged.png](./icons/icons8-charged-battery-16.png)|
|yes|no|`discharging`|40 < `bp` < 70|![half-full.png](./icons/icons8-battery-level-16.png)|
|yes|no|`discharging`|10 < `bp` < 10|![low.png](./icons/icons8-low-battery-16.png)|
|yes|no|`discharging`|`bp` <10|![empty.png](./icons/icons8-empty-battery-16.png)|
|||`not present`||![no-battery.png](./icons/icons8-no-battery-16.png)|
|||`empty`||![no-battery.png](./icons/icons8-no-battery-16.png)|
|||`unknown`||![no-battery.png](./icons/icons8-no-battery-16.png)|

*Note: empty cells can take any value*

## FAQ
<details>
  <summary>Q: I'm getting a module cairo not found error</summary>
  If you're getting an error like this one:
<pre><code bash>conky: llua_load: /home/philippe/.config/conky/functions.lua:1: module 'cairo' not found:
  no field package.preload['cairo']
  no file '/usr/share/lua/5.3/cairo.lua'
  no file '/usr/share/lua/5.3/cairo/init.lua'
  no file '/usr/lib/lua/5.3/cairo.lua'
  no file '/usr/lib/lua/5.3/cairo/init.lua'
  no file './cairo.lua'
  no file './cairo/init.lua'
  no file '/usr/lib/conky/libcairo.so'
  no file '/usr/lib/lua/5.3/cairo.so'
  no file '/usr/lib/lua/5.3/loadall.so'
  no file './cairo.so'</code></pre>
  Make sure to uninstall conky and reinstall from source. If you're on arch, try installing the <code>conky-lua</code><sup>AUR</sup> package.
</details>

## Credits
Icons are taken from [icons8](https://icons8.com) curtesy of the github education pack :octocat:
