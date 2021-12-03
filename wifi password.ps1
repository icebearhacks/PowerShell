netsh wlan show profiles
print "Which network do you want the password for?"
#have the user create a variable here with the network name
#
$wifi = netsh wlan show profile name="NETWORK" key=clear
