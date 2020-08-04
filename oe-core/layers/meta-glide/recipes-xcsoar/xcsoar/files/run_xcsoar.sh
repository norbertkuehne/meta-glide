#!/bin/sh

### start can device
ip link set can0 type can bitrate 500000
ip link set can0 txqueuelen 1000
ip link set can0 up

### run xcsoar
/opt/XCSoar/bin/xcsoar -fly -datapath=/media/sda1/xcsoar/ -profile=/media/sda1/xcsoar/default.prf
