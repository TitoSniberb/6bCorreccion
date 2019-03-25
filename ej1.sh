x=$1

for i in $(cat nombres.txt); do
	mkdir $i
	cd $i
	for i in `seq 1 $1`; do
		mkdir personal$i
	done
	cd ..
done
