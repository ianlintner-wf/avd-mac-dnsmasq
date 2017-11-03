# This bash script gets the local bash ip address and updates temp files
# this uses the domain .loc 
# @TODO move domain to arg e.g. $1 or nammed arg
# @TODO specific hosts moved to config file

local_ip=$(ipconfig getifaddr en0)

# Specify specific hosts this could be specified in a config file late
# These should be in tmp because this should run as cron could be in another directory like /usr/local/etc/dnsmasqhost IDK?
echo "$local_ip testDomain2.loc"  > /tmp/hosts
echo "$local_ip testdomain2.loc" >> /tmp/hosts

# Move loc to an arg $1 /etc/resolver/$1
echo "nameserver $local_ip" > /etc/resolver/loc

# Move loc to an arg "address=/.$1/$local_ip" 
echo "address=/.loc/$local_ip" >> /tmp/dnsmasq.conf
