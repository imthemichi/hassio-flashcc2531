#!/bin/bash
echo "Startet"
cd /flash_cc2531
if ! ./cc_chipid | grep "ID = b524"; then echo "ChipID not found." && exit 1; fi

echo "Downloading firmware"
if ! wget https://github.com/Koenkk/Z-Stack-firmware/raw/master/coordinator/Z-Stack_Home_1.2/bin/default/CC2531_DEFAULT_20201127.zip; then echo "firmware not found" && exit 1; fi

echo "unziping"
if ! 7z x CC2531_DEFAULT_20201127.zip; then echo "unzip failed" && exit 1; fi

echo "backup firmware"
./cc_read save.hex
if ! cp save.hex /backup/save_$(date +%s).hex; then echo "could not backup firmware" && exit 1; fi

echo "erase"
./cc_erase

echo "flash firmware"
./cc_write CC2531ZNP-Prod.hex

echo "Finished"
