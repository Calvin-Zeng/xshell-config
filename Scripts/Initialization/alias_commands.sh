# Pretty print the stations information from QCA-wlanconfig
alias stai='station_info'
station_info()
{
	while [ $# -gt 0 ];
	do
	echo "$1@station information:"
	wlanconfig $1 list sta| wlanconfig_mac_filter
	shift
	done
}

wlanconfig_mac_filter()
{
    awk '    /[0-9a-zA-Z][0-9a-zA-Z]:[0-9a-zA-Z][0-9a-zA-Z]:[0-9a-zA-Z][0-9a-zA-Z]:[0-9a-zA-Z][0-9a-zA-Z]:[0-9a-zA-Z][0-9a-zA-Z]:[0-9a-zA-Z][0-9a-zA-Z]/ {
        MAC=substr($1, 1); CHAN=substr($3, 1); TX=substr($4, 1); RX=substr($5, 1); RSSI=substr($6, 1); MODE=substr($23, 1); print "MAC: " MAC " ,Chan: " CHAN " ,TX/RX rate: " TX "/" RX " ,RSSI: " RSSI " ,Mode: " MODE;
    }'

}

# Filter the ifconfig by ip / mac
alias ifi='ifconfig | ifconfig_ipmac_filter'
ifconfig_ipmac_filter()
{
    awk '
    /[0-9a-z]+/ {
        INTERFACE=substr($1, 1); MAC=substr($5, 1);
    }

	/[0-9a-z]+ +Link encap:Local Loopback/ {
        print substr($1, 1)
    }

    / +HWaddr/ {
        print INTERFACE " @ " MAC;
    }

    / +inet addr:/ {
        IP=substr($2, index($2, ":") + 1);
        print "  \tIPv4 address:" IP;
    }
	
    / +inet6 addr:/ {
        IP6=substr($3, 1);
        print "  \tIPv6 address:" IP6;
    }'
}

# Filter the ifconfig by mac
alias ifm='ifconfig | ifconfig_mac_filter'
ifconfig_mac_filter()
{
    awk '
    /[0-9a-z]+/ {
        INTERFACE=substr($1, 1); MAC=substr($5, 1);
    }

    / +HWaddr/ {
        print INTERFACE " @ " MAC;
    }'
}

# Filter the gre interface from ifconfig by mac
alias ifgre='ifconfig | ifconfig_gre_filter'
ifconfig_gre_filter()
{
    awk '
    /(pgd[0-9]-[0-9]+|g-[0-9a-z]+)/ {
        INTERFACE=substr($1, 1); MAC=substr($5, 1);
    }

    /(pgd[0-9]-[0-9]+|g-[0-9a-z]+)/ {
        print INTERFACE " @ " MAC;
    }'
}

# Filter the gre interface name from `ip -d link show`
ip_gre_filter()
{
    awk '
    /[0-9]+: ([^:])+:/ {
        IF=substr($2, 1, index($2, "@") - 1)
    }

    / +gretap remote/ {
        print IF
    }'
}

gre_purge()
{
    ip -d link show | ip_gre_filter | while read IF
    do    
        echo "Removing GRE tunnel: $IF"
        ip link del "$IF" 
    done  
}