Development environment for [ScalaWAW hackaton #2 - fixing CTRL+C in SBT](http://www.meetup.com/ScalaWAW/events/220284839/)

```bash
cd vagrant
sudo vagrant up

sudo vagrant ssh
cd /shared
```

If it does not work, try:

```bash
sudo apt-get install docker.io apparmor apparmor-profiles aufs-tools cgroup-lite

wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_x86_64.deb # from http://www.vagrantup.com/downloads
dpkg -i vagrant_1.7.2_x86_64.deb 
```

first.

If running from OSX, please, have Vagrant 1.7.2 installed.

[![Join the chat at https://gitter.im/pawel-wiejacha/ScalaWAW-hackaton-ctrlc](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/pawel-wiejacha/ScalaWAW-hackaton-ctrlc?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
