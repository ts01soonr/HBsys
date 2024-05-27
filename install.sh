#!/bin/bash
sudo mkdir /Auto
sudo cp *.* /Auto
sudo rm /lib/systemd/system/asoonr.*
sudo cp asoonr.service /lib/systemd/system/asoonr.service
sudo chmod 644 /lib/systemd/system/asoonr.service
sudo systemctl daemon-reload
sudo systemctl enable asoonr.service
sleep 10
sudo systemctl start asoonr.service
sudo rm *.*
