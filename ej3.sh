maxlineas=`cat precipitaciones.txt | grep "\<0\>" | wc -l`
linea=1

while [ $linea -le $maxlineas ]; do
n=`cat precipitaciones.txt | grep "\<0\>" | awk '{print $1}' | head -$linea | tail -1`
	if [ $n -eq 1 -o $n -eq 8 ]; then
		echo "Lunes"
	elif [ $n -eq 2 -o $n -eq 9 ]; then
		echo "Martes"
	elif [ $n -eq 3 -o $n -eq 10 ]; then
		echo "Miercoles"
	elif [ $n -eq 4 ]; then
		echo "Jueves"
	elif [ $n -eq 5 ]; then
        	echo "Viernes"
	elif [ $n -eq 6 ]; then
        	echo "Sabado"
	elif [ $n -eq 7 ]; then
        	echo "Domingo"
	fi
	linea=$(($linea+1))
done
