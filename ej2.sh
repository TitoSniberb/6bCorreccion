total=0
contador=0

for i in $(awk '{print $2}' precipitaciones.txt); do
	total=$((total+i))
	contador=$((contador+1))
done

media=`echo "scale=2; $total/$contador" | bc`
echo "La media de precipitaciones es $media."
