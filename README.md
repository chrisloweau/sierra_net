# sierra_net

This is a modified version of the sierra_net driver for Linux that adds support
for IPv6 and Dual-Stack Link Sense Indications, by Stefan Brüns on 2017-02-07.

https://patchwork.kernel.org/patch/9559067/
<stefan.bruens@rwth-aachen.de>

It has been submitted for inclusion with later kernel releases, and this code
will become deprecated at that time.

This implementation has had minor modifications to allow it to be compiled for
the Raspberry Pi.







HOW TO COMPILE THE DRIVER YOURSELF
----------------------------------

As this is a kernel driver, you will need to install the Raspberry Pi kernel
source before you can compile the source code. The easiest way to obtain this
is to use the 'Raspberry Pi Kernel Source Installer' tool.

(1) Raspberry Pi Kernel Source Installer

      https://github.com/notro/rpi-source

    Prerequisite:

      sudo apt-get install bc

    Install Commnands:

      sudo wget https://raw.githubusercontent.com/notro/rpi-source/master/rpi-source -O /usr/bin/rpi-source
      sudo chmod +x /usr/bin/rpi-source
      /usr/bin/rpi-source -q --tag-update
      rpi-source



