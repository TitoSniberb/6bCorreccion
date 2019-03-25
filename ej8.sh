ip="10.0.2."
echo Listado de ips\:

for i in `seq 2 254`; do
	correcto=`ping -c 1 $ip$i | grep received | awk '{print $4}'`
	if [ $correcto -gt 0 ]; then
		echo $ip$i
	fi
done
