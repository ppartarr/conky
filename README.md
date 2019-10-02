# My bar description

The conky `battery_status` is counter-intuitive so I've documented the different states here along with the correct icon to display

|is the battery plugged in?|is the charger plugged in?|`battery_status`|`battery_percent` (as `bp`)|icon|
|---|---|---|---|---|
|yes|no|`charging`|X|[charging.png](./icons/icons8-charging-battery-16.png)|
|yes|yes|`charged`|100|[chargin.png](./icons/icons8-charging-battery-16.png)|
|yes|no|`discharging`|`bp` > 90|[full.png](./icons/icons8-full-battery-16.png)|
|yes|no|`discharging`|70 < `bp` < 90|[charged.png](./icons/icons8-charged-battery-16.png)|
|yes|no|`discharging`|40 < `bp` < 70|[half-full.png](./icons/icons8-battery-level-16.png)|
|yes|no|`discharging`|10 < `bp` < 10|[low.png](./icons/icons8-low-battery-16.png)|
|yes|no|`discharging`|`bp` <10|[empty.png](./icons/icons8-empty-battery-16.png)|
|X|X|`not present`|X|[no-battery.png](./icons/icons8-no-battery-16.png)|
|X|X|`empty`|X|[no-battery.png](./icons/icons8-no-battery-16.png)|
|X|X|`unknown`|X|[no-battery.png](./icons/icons8-no-battery-16.png)|

Icons are taken from [icons8](https://icons8.com) curtesy of the github education pack :octocat:
