#!/bin/bash
cd /home/nate/software/locker/venv
./bin/activate
sudo /home/nate/software/locker/venv/bin/uwsgi --master --emperor /etc/uwsgi/apps-enabled --die-on-term --uid www-data --gid www-data --logto /var/log/uwsgi/emperor.log &;sudo chmod 777 /var/www/run/locker.snapplab.sock;sudo chown www-data:www-data /var/www/run/locker.snapplab.sock
