Build a boot2docker vagrant box
=======================================

I built this as a way to create boot2docker vagrant boxes because all of the boot2docker boxes available through hashicorp are horribly dated and/or broken.

Features
--------------------------------------
- SSH works out of box

Example
--------------------------------------
```bash
docker-machine create terrance                     # create a docker machine and name him terrance
./build.sh terrance --output terrance.box          # create a vagrant box from terrance's machine image
vagrant box add terrance.box --name boxen/terrance # add terrance's box to vagrant
```
