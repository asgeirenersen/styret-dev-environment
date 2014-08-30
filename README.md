# Development environment for Styreapp.


Checkout this repo and cd to the root folder.
vagrant up
vagrant ssh

You are in!

## Setup the dev environment inside the VM.

The root folder of this project will be mounted inseide the VM as /home/vagrant/project_root/devtools

~$ CD project_root/devtools
~/project_root/devtools $ ./setupdirs.sh

## The VM
OS: Debian 7.4

## Installed on VM:
* Git
* PHP 5.4
* Zip
* Unzip
* MySQL
* Google Appengine dev environment 1.99
** Installed to /opt/google_appengine
