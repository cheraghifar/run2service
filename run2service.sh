echo "[Unit]" > $1.service
echo Description = ${echo $3| cut -d'"' -f 1 } >> $1.service
echo "" >> $1.service
echo "# Assuming you want to start after network interfaces are made available " >> $1.service
echo After = network.target >> $1.service

echo "" >> $1.service
echo ["Service]" >> $1.service
echo Type = simple >> $1.service
echo ExecStart = ${echo $2| cut -d'"' -f 1 } >> $1.service

echo "" >> $1.service
echo "# User to run the script as " >> $1.service
echo User = $4 >> $1.service

echo "" >> $1.service
echo "# Group to run the script as " >> $1.service
echo Group = $5 >> $1.service

echo "" >> $1.service
echo "# Restart when there are errors " >> $1.service
echo Restart = on-failure >> $1.service

echo SyslogIdentifier = $1 >> $1.service
echo RestartSec = 5 >> $1.service
echo TimeoutStartSec = infinity >> $1.service

echo "" >> $1.service
echo "[Install]" >> $1.service

echo "" >> $1.service
echo "# Make it accessible to other users " >> $1.service
echo WantedBy = multi-user.target >> $1.service

