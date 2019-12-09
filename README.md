# hassio-flashcc2531
Hass.io addon for flashing the zigbee usbstick CC2531 with this [firmware](https://github.com/Koenkk/Z-Stack-firmware/raw/master/coordinator/Z-Stack_Home_1.2/bin/default/CC2531_DEFAULT_20190608.zip)

It follows this good blog entry https://lemariva.com/blog/2019/07/zigbee-flashing-cc2531-using-raspberry-pi-without-cc-debugger and flashes the firmware needed for zigbee2mqtt (see https://www.zigbee2mqtt.io/getting_started/flashing_the_cc2531.html).

# Installation and Usage

1. Add this repository url https://github.com/imthemichi/hassio-flashcc2531 to your home assistant addon store ([see home assistant doku](https://www.home-assistant.io/hassio/installing_third_party_addons/))
1. Install from this repo the flashcc2531 addon
1. Connect the CC2531 ([for details](https://lemariva.com/blog/2019/07/zigbee-flashing-cc2531-using-raspberry-pi-without-cc-debugger))

Raspberry Pi |	CC2531
------------ | -------------
GND |	GND
Pin 38 |	DD
Pin 36 |	DC
Pin 35 |	RST

4. Start the addon. It will finish it self after flashing or if an error occurs.
5. Disconnect from USB
