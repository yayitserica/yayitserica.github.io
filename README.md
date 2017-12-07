# Yay It's Erica Website


## Local Development

The purpose of this is to emulate any server side features full service if needed.

### Vagrant

In order to view this site on your local browser (visit: http://192.168.23.23/). Will will display the contents of live-site.

#### Prerequisites

1. Install Vagrant: https://www.vagrantup.com/
2. Install Virtual Box: https://www.virtualbox.org/wiki/Downloads

#### Create server

1. Open terminal go to project root `cd ~/Projects/Yay-its-Erica-Website`
2. Create Virtual machine: run `vagrant up`

Visit http://192.168.23.23/ to view site

#### View as http://local.yayitserica.com/

in order to view this in a human readable pattern you can update you `hosts` file


1. Open file to edit `sudo vi /etc/hosts`
2. add `192.168.23.23 local.yayitserica.com` to the file
3. Visit http://local.yayitserica.com/


"# yayitserica.github.io" 
