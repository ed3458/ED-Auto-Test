source 002_Edward.profile.sh
#LOGA
echo -n "Rack num,Host name,Starting Timestamp,BIOS Rev,BMC Rev,Ethernet IP,BMC IP,Node ID,MB Part-Number,Customized field,Category,F_end1," | tee -i $SAVE0

#LOGB
echo -n "CPU Info,MB Manufacturer,MB Part-Number,MB Serial-Number,Memory Total Size,Dimm Info,Dimm Running Speed,BMC MAC,BMC IP Source,F_end2," | tee -a $SAVE0

# LOGC
echo -n "C01. CPU Qty recognition(2)," | tee -a $SAVE0
echo -n "C02. Both CPUs(2) HyperThreaiding be enabled function check," | tee -a $SAVE0
echo -n "C03. Numa fumction be enabled check," | tee -a $SAVE0
echo -n "C04. System reset cycle test(3) via - OS init 6," | tee -a $SAVE0
echo -n "C05. System power cycle test(3) via BMC power cycle," | tee -a $SAVE0
echo -n "C06. FIO 4k seq read test," | tee -a $SAVE0
echo -n "C07. FIO 4k seq write test," | tee -a $SAVE0
echo -n "C08. FIO 128k seq read test," | tee -a $SAVE0
echo -n "C09. FIO 128k seq write test," | tee -a $SAVE0
echo -n "C10. dmesg error check," | tee -a $SAVE0
echo -n "C11," | tee -a $SAVE0
echo -n "C12," | tee -a $SAVE0
echo -n "Test Result,F_end3" | tee -a $SAVE0
