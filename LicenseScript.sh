#VMware Script to Allow for the Renewal of Eval License
#Credit goes to Calvin Bui, a True Hero 
#"So shines a good deed in a weary world"

#Simple Script, no automation
#Remove Current License
rm -r /etc/vmware/license.cfg
#Copy over the new evalutation license, exists on the host in the /etc/vmware directory
cp /etc/vmware/.#license.cfg /etc/vmware/license.cfg
#Restart ESXi Sercices, Restart Host
/etx/init.d/vpxa restart

sudo reboot

#Automation using Cron
#!/bin/sh
#Remove License
echo 'Removing License'
rm -r /etc/vmware/license.cfg
#Copy the Existing License
echo 'Copying new license'
cp /etc/vmware/.#license.cfg /etc/vmware/license.cfg
#Restart ESXi Services, Restart Host
/etc/init.d/vpxa restart






