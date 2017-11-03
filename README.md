# avd-mac-dnsmasq
A set of scripts and config settings to deal with DHCP and dynamic local IP addresses allow android to resolve local or docker hosts for API/web connections. 

This is for Mac and tested with OSX High Sierra. I could be adopted to an ubuntu platform, but it would take work. Windows users :(

## The Problem 
Android emulators can't connect to hosts loopback 127.0.0.1. Using dnsmasq these scripts create update dnsmasq temp configs with your en0 ip address, update /etc/resolver/loc and set the network interface to use the local dnsmasq on the actual ip address.

If you have multiple networks you connect to e.g. home and work or DHCP and your local IP address changes this sets your local dev host to use the ipaddress so AVD and your android device can use it (if the ports are open and you have the Android on the same network and set its DNS to your computers IP).

## Terrible setup / installation guide

See the dnsmaq.conf for entries that need to be added to /usr/local/etc/dnsmasq.conf
Then run the two bash scripts. you will probably need chown and run as sudo.

This is not a prepackaged script you will have to clone or copy it and change values. I may make this an actual service eventually, but I just wanted to share my bash hack-tastic solution. Yeah it's gross and probably will break.

## Disclaimer 

I am going to be a jerk and say this is unsupported open source use at your own peril. If you have ideas submit them as pull requests and I will moderate if I have time or be open to discussion.


