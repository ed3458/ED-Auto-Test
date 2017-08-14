#!/bin/bash
echo
echo -e "Timestamp sync"
ntpdate 172.19.0.1 && hwclock -w
##################################
modprobe ipmi_si
modprobe ipmi_devintf
##################################
echo
echo -e "Check BMC Status"
Flag_BMC_status=`ipmitool lan print | grep 'MAC Address' | awk '{print $4}' | sed 's/:/-/g'`
if [ "$Flag_BMC_status" = "" ]; then
   echo -e "\tFail, BMC is not alive. Test Stop!!!"
   exit 0
else 
   echo -e "\tBMC is alive ($Flag_BMC_status). Go next"
   echo
fi
##################################
##################################
### Start Test
mount 172.16.0.1:/NFS/BootScript /NFS/BootScript #2016.12.12: When testing MicroRack, system didn't mount 172.16.0.1:/NFS/BootScript always successfully at booting time. Increase this line for re-do again.
cd /NFS/BootScript/Edward
source 002_Edward.profile.sh

##################################
./002_Format.sh
./002_ed_auto_LOGA.sh
./002_ed_auto_LOGB.sh
./002_ed_auto_LOGC.sh
./002_ed_auto_LOGD.sh
./002_ed_auto_LOGE.sh
##################################
