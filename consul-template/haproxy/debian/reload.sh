#!/bin/bash

sleep 0.1
haproxy -f $HAP_HOME/haproxy.cfg -p /var/run/haproxy.pid -sf $(cat /var/run/haproxy.pid)
