#!/bin/bash

program()
{
    lm4flash main.bin
}

debug()
{
    sudo openocd --file \
        /usr/local/share/openocd/scripts/board/ek-tm4c123gxl.cfg &
    arm-none-eabi-gdb

    sudo killall openocd
}

P_FLAG=0
D_FLAG=0

for i in $@
do
    if [[ $i == -p ]]
    then
        P_FLAG=1
    fi

    if [[ $i == -d ]]
    then
        D_FLAG=1
    fi
done

if [[ $P_FLAG == 1 ]]
then
    program
fi

if [[ $D_FLAG == 1 ]]
then
    debug
fi
