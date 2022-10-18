# setupgpio_ubunturpi

Ubuntu version 20.4.04
RPI 4 (tested on model B )

Now testing on ubuntu server 22.04 64-bit
RPI4 model B (2018)

Script to update repositories and set permissions for using gpiozero on an ubuntu server installed on Rpi.

First: Flash sd-card, logon, set keyboard (sudo nano /etc/default/keyboard), configure network (see yaml-file in directory)

After downloaad please inspect the script.

The script will reboot the rpi after running.(The reboot is needed)




Preconditions :

  The script needs to be run with elevated (root) priviledges.
  like :  
    sudo bash setup_gpio.bash
 
  Network must be available as the script will update programs from remote repositories

Problems :
  The script will stall if the unattended package update is running.(wait a while and try again)
  

  
Other files:

        blinkgpio2.py  
               This is a python script that when executed will blink an LED connected to GPIO-pin-2
               execute like  :
                       python3 blinkgpio2.py
                                                                                                                                                                                 
                       
        50-cloud-init.yaml
                This is a netplan file made for creating a wireless connection... 
                More instruction in the file
                Use at own risk.
