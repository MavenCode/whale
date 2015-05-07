#!/bin/sh

sleep 0.1
haproxy -f $HAP_HOME/haproxy.cfg -p $PID -sf $(cat $PID)
