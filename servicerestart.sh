# Restart the service and add it to the network interface 

sudo launchctl stop homebrew.mxcl.dnsmasq
sudo launchctl start homebrew.mxcl.dnsmasq

local_ip=$(ipconfig getifaddr en0)

#Make sure our DNS server is on adapter for android to pick up add your choice of DNS servers
networksetup -setdnsservers Wi-Fi $local_ip 208.67.222.222 208.67.220.220 8.8.8.8
