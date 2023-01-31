#!/bin/bash
sudo docker start $(docker ps -a -q)
sleep 180s