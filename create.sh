#/bin/bash

#management OOB for all devices 

sudo docker network create OOB 

#network for receiver to LHR-1 ( net1) and LHR-2 (net2)

sudo docker network create net1 
sudo docker network create net2 

#network for LHR-1(net3) and LHR-2(net4) to IR-1

sudo docker network create net3
sudo docker network create net4

#network for IR-1 to RP

sudo docker network create net5

#network for RP to IR-2

sudo docker network create net6

#network for IR-2 to FHR-1(net7) and FHR-2(net8)

sudo docker network create net7
sudo docker network create net8

#network for FHR-1 to Sender

sudo docker network create net9

#network for FHR-2 to Sender

sudo docker network create net9

#Create container for the Receiver : 

sudo docker create --name=Receiver --privileged -v /home/punit/Documents/docker/cEOS-lab-tests/ceos_lab_demo-master/startup-config/ebgp/receiver-1:/mnt/flash/startup-config -e INTFTYPE=eth -e ETBA=1 -e SKIP_ZEROTOUCH_BARRIER_IN_SYSDBINIT=1 -e CEOS=1 -e EOS_PLATFORM=ceoslab -e container=docker -p 6031:6030 -p 2001:22/tcp -i -t ceosimage:4.29.0.2 /sbin/init systemd.setenv=INTFTYPE=eth systemd.setenv=ETBA=1 systemd.setenv=SKIP_ZEROTOUCH_BARRIER_IN_SYSDBINIT=1 systemd.setenv=CEOS=1 systemd.setenv=EOS_PLATFORM=ceoslab systemd.setenv=container=docker 

#Create container for LHR-1 and LHR-2

sudo docker create --name=LHR-1 --privileged -e INTFTYPE=eth -e ETBA=1 -e SKIP_ZEROTOUCH_BARRIER_IN_SYSDBINIT=1 -e CEOS=1 -e EOS_PLATFORM=ceoslab -e container=docker -p 6032:6030 -p 2002:22/tcp -i -t ceosimage:4.29.0.2 /sbin/init systemd.setenv=INTFTYPE=eth systemd.setenv=ETBA=1 systemd.setenv=SKIP_ZEROTOUCH_BARRIER_IN_SYSDBINIT=1 systemd.setenv=CEOS=1 systemd.setenv=EOS_PLATFORM=ceoslab systemd.setenv=container=docker && sudo docker create --name=LHR-2 --privileged -e INTFTYPE=eth -e ETBA=1 -e SKIP_ZEROTOUCH_BARRIER_IN_SYSDBINIT=1 -e CEOS=1 -e EOS_PLATFORM=ceoslab -e container=docker -p 6033:6030 -p 2003:22/tcp -i -t ceosimage:4.29.0.2 /sbin/init systemd.setenv=INTFTYPE=eth systemd.setenv=ETBA=1 systemd.setenv=SKIP_ZEROTOUCH_BARRIER_IN_SYSDBINIT=1 systemd.setenv=CEOS=1 systemd.setenv=EOS_PLATFORM=ceoslab systemd.setenv=container=docker

#Create container for IR-1

sudo docker create --name=IR-1 --privileged -e INTFTYPE=eth -e ETBA=1 -e SKIP_ZEROTOUCH_BARRIER_IN_SYSDBINIT=1 -e CEOS=1 -e EOS_PLATFORM=ceoslab -e container=docker -p 6034:6030 -p 2004:22/tcp -i -t ceosimage:4.29.0.2 /sbin/init systemd.setenv=INTFTYPE=eth systemd.setenv=ETBA=1 systemd.setenv=SKIP_ZEROTOUCH_BARRIER_IN_SYSDBINIT=1 systemd.setenv=CEOS=1 systemd.setenv=EOS_PLATFORM=ceoslab systemd.setenv=container=docker

#Create container for RP

sudo docker create --name=RP --privileged -e INTFTYPE=eth -e ETBA=1 -e SKIP_ZEROTOUCH_BARRIER_IN_SYSDBINIT=1 -e CEOS=1 -e EOS_PLATFORM=ceoslab -e container=docker -p 6035:6030 -p 2005:22/tcp -i -t ceosimage:4.29.0.2 /sbin/init systemd.setenv=INTFTYPE=eth systemd.setenv=ETBA=1 systemd.setenv=SKIP_ZEROTOUCH_BARRIER_IN_SYSDBINIT=1 systemd.setenv=CEOS=1 systemd.setenv=EOS_PLATFORM=ceoslab systemd.setenv=container=docker

#Create container for IR-2

sudo docker create --name=IR-2 --privileged -e INTFTYPE=eth -e ETBA=1 -e SKIP_ZEROTOUCH_BARRIER_IN_SYSDBINIT=1 -e CEOS=1 -e EOS_PLATFORM=ceoslab -e container=docker -p 6036:6030 -p 2006:22/tcp -i -t ceosimage:4.29.0.2 /sbin/init systemd.setenv=INTFTYPE=eth systemd.setenv=ETBA=1 systemd.setenv=SKIP_ZEROTOUCH_BARRIER_IN_SYSDBINIT=1 systemd.setenv=CEOS=1 systemd.setenv=EOS_PLATFORM=ceoslab systemd.setenv=container=docker

#Create container for FHR-1 and FHR-2

sudo docker create --name=FHR-1 --privileged -e INTFTYPE=eth -e ETBA=1 -e SKIP_ZEROTOUCH_BARRIER_IN_SYSDBINIT=1 -e CEOS=1 -e EOS_PLATFORM=ceoslab -e container=docker -p 6037:6030 -p 2007:22/tcp -i -t ceosimage:4.29.0.2 /sbin/init systemd.setenv=INTFTYPE=eth systemd.setenv=ETBA=1 systemd.setenv=SKIP_ZEROTOUCH_BARRIER_IN_SYSDBINIT=1 systemd.setenv=CEOS=1 systemd.setenv=EOS_PLATFORM=ceoslab systemd.setenv=container=docker && sudo docker create --name=FHR-2 --privileged -e INTFTYPE=eth -e ETBA=1 -e SKIP_ZEROTOUCH_BARRIER_IN_SYSDBINIT=1 -e CEOS=1 -e EOS_PLATFORM=ceoslab -e container=docker -p 6038:6030 -p 2008:22/tcp -i -t ceosimage:4.29.0.2 /sbin/init systemd.setenv=INTFTYPE=eth systemd.setenv=ETBA=1 systemd.setenv=SKIP_ZEROTOUCH_BARRIER_IN_SYSDBINIT=1 systemd.setenv=CEOS=1 systemd.setenv=EOS_PLATFORM=ceoslab systemd.setenv=container=docker

#Create container for Sender

sudo docker create --name=Sender --privileged -e INTFTYPE=eth -e ETBA=1 -e SKIP_ZEROTOUCH_BARRIER_IN_SYSDBINIT=1 -e CEOS=1 -e EOS_PLATFORM=ceoslab -e container=docker -p 6039:6030 -p 2009:22/tcp -i -t ceosimage:4.29.0.2 /sbin/init systemd.setenv=INTFTYPE=eth systemd.setenv=ETBA=1 systemd.setenv=SKIP_ZEROTOUCH_BARRIER_IN_SYSDBINIT=1 systemd.setenv=CEOS=1 systemd.setenv=EOS_PLATFORM=ceoslab systemd.setenv=container=docker

#Connect all containers to the OOB network 

sudo docker network connect OOB Receiver
sudo docker network connect OOB LHR-1
sudo docker network connect OOB LHR-2
sudo docker network connect OOB IR-1
sudo docker network connect OOB RP
sudo docker network connect OOB IR-2
sudo docker network connect OOB FHR-1
sudo docker network connect OOB FHR-2
sudo docker network connect OOB Sender

#Connecting the receiver to lhr-1 and lhr-2

sudo docker network connect net1 Receiver
sudo docker network connect net2 Receiver

#Connecting lhr-1 and lhr-2 to Receiver

sudo docker network connect net1 LHR-1
sudo docker network connect net2 LHR-2

#Connecting LHR-1 and LHR-2 to IR-1

sudo docker network connect net3 LHR-1
sudo docker network connect net4 LHR-2

#Connecting IR-1 to LHR-1 and LHR-2

sudo docker network connect net3 IR-1
sudo docker network connect net4 IR-1

#Connecting IR-1 to RP and RP to IR-1

sudo docker network connect net5 IR-1
sudo docker network connect net5 RP

#Connecting RP to IR-2 and IR-2 to RP

sudo docker network connect net6 RP
sudo docker network connect net6 IR-2

#Connecting IR-2 to FHR-1 and FHR-2

sudo docker network connect net7 IR-2
sudo docker network connect net8 IR-2
sudo docker network connect net7 FHR-1
sudo docker network connect net8 FHR-2

#Connecting FHR-1 and FHR-2 to Sender

sudo docker network connect net9 IR-2
sudo docker network connect net9 IR-2
sudo docker network connect net9 Sender