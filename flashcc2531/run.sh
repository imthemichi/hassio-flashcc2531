#!/bin/bash
echo "Startet"
cd /flash_cc2531
./cc_chipid | grep "ID = b524" || (echo "ChipID not found." && exit 1)

echo "Downloading firmware"
wget https://github.com/Koenkk/Z-Stack-firmware/raw/master/coordinator/Z-Stack_Home_1.2/bin/default/CC2531_DEFAULT_20190608.zip || (echo "firmware not found" && exit 1)

echo "unziping"
unzip CC2531_DEFAULT_20190608.zip || (echo "unzip failed" && exit 1)

echo "backup firmware"
./cc_read save.hex
cp save.hex /backup/save.hex || (echo "could not backup firmware" && exit 1)

echo "erase"
./cc_erase

echo "flash firmware"
./cc_write CC2531ZNP-Prod.hex

echo "Finished"