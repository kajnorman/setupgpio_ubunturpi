# setupgpio_ubunturpi

Ubuntu version 20.4.04
RPI 4 (tested on model B )

Script to update repositories and set permissions for using gpiozero on an ubuntu server installed on Rpi.

After downloaad please inspect the script.

The script will reboot the rpi after running.(needed)




Preconditions :

  The script needs to be run with elevated (root) priviledges.
  like 
    sudo bash setup_gpio.bash
 
  Network must be available as the script will update programs from remote repositories

Problems :
  The script will stall if the unattended package update is running.(wait a while and try again)
  

  
