totalLin=`cat listado.txt | grep Linux | wc -l`
totalWin=`cat listado.txt | grep Windows | wc -l`

totalProLin=0
totalProWin=0

linea=1

while [ $linea -le $totalWin ]; do
	proWin=`cat listado.txt | grep Windows | head -${linea} | tail -1 | awk '{print $3}'`
	totalProWin=$((totalProWin+proWin))
	linea=$(($linea+1))
done

linea=1
while [ $linea -le $totalLin ]; do
	proLin=`cat listado.txt | grep Linux | head -${linea} | tail -1 | awk '{print $3}'`
        totalProLin=$(($totalProLin+$proLin))
	linea=$(($linea+1))
done

echo Linux-\> $totalLin $totalProLin
echo Windows-\> $totalWin $totalProWin
