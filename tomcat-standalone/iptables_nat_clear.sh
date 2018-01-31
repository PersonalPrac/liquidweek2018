#!/bin/bash
echo "clearing nat rules"
sudo iptables -t nat -F
sudo iptables -t nat -X
