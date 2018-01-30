# Systemd

A service file is needed to control Home Assistant with *systemd*.

For most systems, the file is

    $ /etc/systemd/system/[name of your service].service

## Enabling the service

You need to reload systemd to make the daemon aware of the new configuration.

	$ sudo systemctl --system daemon-reload

To have Home Assistant start automatically at boot, enable the service.

	$ sudo systemctl enable [name of your service]

To disable the automatic start, use this command.

	$ sudo systemctl disable [name of your service]

To start Home Assistant now, use this command.

	$ sudo systemctl start [name of your service]
