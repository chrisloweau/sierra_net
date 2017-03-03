#sierra_net

This is a modified version of the sierra_net driver for Linux that adds support
for IPv6 and Dual-Stack Link Sense Indications, by [Stefan Brüns](<stefan.bruens@rwth-aachen.de>) on 2017-02-07.

https://patchwork.kernel.org/patch/9559067/

https://github.com/0day-ci/linux/blob/28bed2ba87fdf5cce38580642743878de24d1734/drivers/net/usb/sierra_net.c

Stefan has submitted the update for inclusion with later kernel releases, and
when accepted this code will become deprecated.

This implementation has had minor modifications to allow it to be compiled for
the Raspberry Pi.


HOW TO COMPILE THIS DRIVER YOURSELF
-----------------------------------

(1) Install Git:

      sudo apt-get install git -y

(2) Download the sierra_net Repository:

      cd ~
      git clone https://github.com/chrisloweau/sierra_net.git

(3) INSTALL RASPBERRY PI KERNEL SOURCE

As this is a kernel driver, you will need to install the Raspberry Pi kernel
source before you can compile the source code. The easiest way to obtain this
is to use the 'Raspberry Pi Kernel Source Installer' tool.

      https://github.com/notro/rpi-source

  Prerequisite:

      sudo apt-get install bc

  Install Commnands:

      sudo wget https://raw.githubusercontent.com/notro/rpi-source/master/rpi-source -O /usr/bin/rpi-source
      sudo chmod +x /usr/bin/rpi-source
      /usr/bin/rpi-source -q --tag-update
      rpi-source



