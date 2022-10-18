#shell script for enabling gpiozero on the raspberry with ubuntu 20.4.04

#set -vxe    #e  will exit on any error...might beremoved ??

#if ping -c 1 -w 1 8.8.8.8
#then


#apt -y update

#apt -y upgrade

#apt -y install python3-pip

#pip3  install gpiozero

#apt -y install python3-gpiozero

groupadd gpio

usermod -a -G gpio  ubuntu

cat <<ENDRULES >/etc/udev/rules.d/gpiotestrules.rules
SUBSYSTEM=="bcm2835-gpiomem", KERNEL=="gpiomem", GROUP="gpio", MODE="0660"
SUBSYSTEM=="gpio", KERNEL=="gpiochip*", ACTION=="add", RUN+="/bin/sh -c 'chown root:gpio /sys/class/gpio/export /sys/class/gpio/unexport ; chmod 220 /sys/class/gpio/export /sys/class/gpio/unexport'"
SUBSYSTEM=="gpio", KERNEL=="gpio*", ACTION=="add", RUN+="/bin/chown root:gpio /sys%p/active_low /sys%p/edge /sys%p/direction /sys%p/value", RUN+="/bin/chmod 660 /sys%p/active_low /sys%p/edge /sys%p/direction /sys%p/value"
ENDRULES



#echo "press ctrl-C if you want to avoid a reboot"

#sleep 10

#reboot

#else
#  echo "no network"
#  echo "ending the setup"
#fi



