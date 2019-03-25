dir=$1

ficheros=`ls $dir | wc -l`
total=$ficheros
rm $dir*.txt
comprobar=`ls $dir | wc -l`
borrados=$((total-comprobar))
if [ $borrados -gt 0 ]; then
	echo Se han borrado $borrados ficheros
fi
