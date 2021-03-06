# sierra_net driver with IPv6 and IPV4V6 (Dual-Stack)

This is a modified version of the **sierra_net** driver for Linux that adds support for **IPv6** and **IPV4V6** (Dual-Stack) Link Sense Indications, written by **Stefan Brüns** on 2017-02-07.

https://patchwork.kernel.org/patch/9559067/

https://github.com/0day-ci/linux/blob/28bed2ba87fdf5cce38580642743878de24d1734/drivers/net/usb/sierra_net.c

Stefan has submitted the update for inclusion with later kernel releases, and when accepted this code will become deprecated.

## Changes for Raspberry Pi

This implementation has **two** minor modifications to allow it to be compiled for the Raspberry Pi:

1. Commented out **Line 687:** _unused variable 'eth' in function 'sierra_net_bind'_; and

2. Commented out **Line 710:** _'struct net_device' has no member named 'max_mtu' in function 'sierra_net_bind'_.
 
## How to Compile the Driver

1. Install **Raspberry Pi Kernel Source**

   As this is a kernel driver, you will need to install the Raspberry Pi kernel
   source before you can compile the source code. The easiest way to obtain this
   is to use the [Raspberry Pi Kernel Source Installer](https://github.com/notro/rpi-source) tool.

   _Prerequisite:_
      
   ```
   sudo apt-get install bc
   ```
      
   _Install Commands:_
      
   ```
   sudo wget https://raw.githubusercontent.com/notro/rpi-source/master/rpi-source -O /usr/bin/rpi-source
   sudo chmod +x /usr/bin/rpi-source
   /usr/bin/rpi-source -q --tag-update
   rpi-source
   ```

2. Install **Git**

   ```
   sudo apt-get install git -y
   ```

3. Download **sierra_net** repository

   ```
   cd ~
   git clone https://github.com/chrisloweau/sierra_net.git
   cd ~/sierra_net
   ```

4. Compile **sierra_net.c** source

   ```
   make compile
   ```

5. Install **sierra_net.ko** driver

   ```
   sudo make install
   ```
