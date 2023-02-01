ip=10.93.186
online=0
offline=0
for i in {1..255}
do
ping -c 1 $ip.$i
if [ $? -eq 0 ]
then echo $ip.$i >> online.txt
let "online = $online+1"; 
echo "on a $online utilisateurs en ligne"
else 
echo $ip.$i >> ofline.txt
let "offline = $offline+1"; 
echo "et $offline utilisateurs hors ligne"
fi 
done
