# cEOS_multicast-demo-1

Rudimentary docker networking setup with cEOS for multicast basics

This lab is a basic docker setup witout the use of docker-compose. The goal of this lab is to have a understanding of multicast basics using a cEOS environment. The topology consists of 9 cEOS instances including the sender and receiver.

File 1- Topology-mulitcast.jpg  - The topology file for the lab and indicates the connections between the devices. The container names are as per the ones in the topology diagram.
File 2- create.sh - Consists of individual docker create commands and respective networks with mappings.
File 3- run.sh - Docker run commands for conatiners created.
File 4- destroy.sh - Docker stop and delete commands. Use once lab needs to be terminate.

# Instructions on how to use this lab : 

1. Execute the creator.sh script to have all the networks and containers created : 

./create.sh

2. Execute the run.sh script to run the created containers : 

./run.sh

3. Execute the destroy script when you are done with the lab to free up resources : 

./destroyer.sh
