# avd-mac-dnsmasq
A set of scripts and config settings to allow android to resolve local or docker hosts for API/web connections.

# The problem is that Android Emulators make it difficult to talk to localhost so running DNSMASQ makes life easier.
If you have multiple networks you connect to e.g. home and work or DHCP and your local IP address changes this sets your local dev host to use the ipaddress so AVD and your android device can use it (if the ports are open and you have the Android on the same network and set its DNS to your computers IP).

See the dnsmaq.conf for entries that need to be added to /usr/local/etc/dnsmasq.conf
Then run the two bash scripts. you will probably need chown and run as sudo.


This is not a prepackaged script you will have to clone or copy it and change values. I may make this an actual service eventually, but I just wanted to share my bash hack-tastic solution. Yeah it's gross and probably will break.

I am going to be a jerk and say this is unsupported open source use at your own peril. If you have ideas submit them as pull requests and I will moderate if I have time or be open to discussion.


