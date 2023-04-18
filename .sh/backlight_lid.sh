#!/bin/bash

while :
do
    if grep -q 'open' '/proc/acpi/button/lid/LID/state'; then
       brightnessctl --device="intel_backlight" set 50
    fi

    while grep -q 'closed' '/proc/acpi/button/lid/LID/state'
    do
        brightnessctl --device="intel_backlight" set 0
    done

    sleep 0.5
done
