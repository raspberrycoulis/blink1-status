# blink(1) Service Status
Use ThingM's blink(1) to check the status of a `systemd` service.

### ThingM's blink(1)
Install in your command line with:

    $ sudo apt-get install libusb-1.0-0-dev git-core
    $ git clone https://github.com/todbot/blink1.git
    $ cd blink1/commandline
    $ make

Update udev rules so you don't need to run as `sudo` every time:

    $ cd ~
    $ cd blink1/linux
    $ sudo cp 51-blink1.rules /etc/udev/rules.d/
    $ sudo udevadm control --reload-rules

Unplug the blink(1) and put it back in to complete the process.

## Select the service you want to check up on
Simply change the `/bin/systemctl is-active XXXXXXX.service` to the running service you want to check the status of.

## Run as a cronjob
To run this script, simple setup a cronjob as follows:
````
sudo crontab -e
````
Then add the following to the bottom to run every hour, on the hour:
````
0 */1 * * *  /home/pi/blink1-status/blink1-status.sh >/dev/null 2>&1
````
Save `CTRL+X` and save `Y` to install the cronjob.
