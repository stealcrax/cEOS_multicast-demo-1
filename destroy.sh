#!/bin/bash

sudo docker stop Sender FHR-2 FHR-1 IR-2 RP IR-1 LHR-2 LHR-1 Receiver

sleep 120s

sudo docker rm Sender FHR-2 FHR-1 IR-2 RP IR-1 LHR-2 LHR-1 Receiver

sleep 120s 

sudo docker network rm OOB net1 net2 net3 net4 net5 net6 net7 net8 net9

