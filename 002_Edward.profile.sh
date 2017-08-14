#!/bin/bash
 
#  $racknum
#  $host_name
#  $SAVE0	: title.log
#  $SAVE1	: $racknum-$host_name.log
#  $SAVE2	: Counter_Reset saved log
#  $SAVE3	: Counter_Power_Cycle saved log
#  $LOGD_Folder	: LOGD directory
#  $MBPN1	: MB Part-Number
#  $LOOPS_RST	: The system reset times in plan
#  $LOOPS_PWR	: The system DC power cycle times in plan

racknum=xxx
mkdir -p /NFS/LOG/$racknum
mkdir -p /NFS/LOG/$racknum/Counter/

host_name=`ipmitool lan print | grep 'MAC Address' | awk '{print $4}' | sed 's/:/-/g'`

SAVE0=/NFS/LOG/$racknum/title.log
SAVE1=/NFS/LOG/$racknum/$racknum-$host_name.log
SAVE2=/NFS/LOG/$racknum/Counter/Counter_Reset-$racknum-$host_name.log
SAVE3=/NFS/LOG/$racknum/Counter/Counter_PWR_Cycle-$racknum-$host_name.log

LOGD_Folder=/NFS/LOGD

###### For (Reset/Power cycle) test counter ##########################
LOOPS_RST=xxx
LOOPS_PWR=xxx
######################################################################

Test ()
{
   echo Testing
   echo
   echo
   echo
   echo -e "1. $racknum"
   echo -e "2. $host_name"
   echo -e "3. $SAVE0"
   echo -e "4. $SAVE1"
   echo -e "5. $SAVE2"
   echo -e "6. $SAVE3"
}
#############################################################

echo

#############################################################
#############################################################
#Test
#############################################################
