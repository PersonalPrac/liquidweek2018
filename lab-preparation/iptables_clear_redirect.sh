#!/bin/bash
echo "clearing nat rules"
echo ""
sudo iptables -t nat -F
sudo iptables -t nat -X
