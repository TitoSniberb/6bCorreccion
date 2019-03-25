listaPares=`cat numeros.txt | grep '2$\|4$\|6$\|8$\|0$'`
echo Pares\: $listaPares
cantPares=`cat numeros.txt | grep '2$\|4$\|6$\|8$\|0$' | wc -l`

listaImpares=`cat numeros.txt | grep '1$\|3$\|5$\|7$\|9$'`
echo Impares\: $listaImpares
cantImpares=`cat numeros.txt | grep '1$\|3$\|5$\|7$\|9$' | wc -l`

echo Cantidad de numeros pares\: $cantPares
echo Cantidad de numeros impares\: $cantImpares

