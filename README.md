Development environment for [ScalaWAW hackaton #2 - fixing CTRL+C in SBT](http://www.meetup.com/ScalaWAW/events/220284839/)

```bash
sudo vagrant up
```

If it does not work, try:

```bash
sudo apt-get install docker.io apparmor apparmor-profiles aufs-tools cgroup-lite

wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_x86_64.deb # from http://www.vagrantup.com/downloads
dpkg -i vagrant_1.7.2_x86_64.deb 
```

first.
