arg1=$1
arg2=$2
arg3=$3
arg4=$4
arg5=$5

echo "[Unit]" > $arg1.service
echo Description = $arg3 >> $arg1.service
echo "" >> $arg1.service
echo "# Assuming you want to start after network interfaces are made available " >> $arg1.service
echo After = network.target >> $arg1.service

echo "" >> $arg1.service
echo ["Service]" >> $arg1.service
echo Type = simple >> $arg1.service
echo ExecStart = $arg2 >> $arg1.service

echo "" >> $arg1.service
echo "# User to run the script as " >> $arg1.service
echo User = $arg4 >> $arg1.service

echo "" >> $arg1.service
echo "# Group to run the script as " >> $arg1.service
echo Group = $arg5 >> $arg1.service

echo "" >> $arg1.service
echo "# Restart when there are errors " >> $arg1.service
echo Restart = on-failure >> $arg1.service

echo SyslogIdentifier = $arg1 >> $arg1.service
echo RestartSec = 5 >> $arg1.service
echo TimeoutStartSec = infinity >> $arg1.service

echo "" >> $arg1.service
echo "[Install]" >> $arg1.service

echo "" >> $arg1.service
echo "# Make it accessible to other users " >> $arg1.service
echo WantedBy = multi-user.target >> $arg1.service

echo "systemctl enable " $arg1 >> tmp2.sh
echo "systemctl daemon-reload" >> tmp2.sh
echo "systemctl start " $arg1 >> tmp2.sh
