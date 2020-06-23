#!/bin/bash
Menu(){
local arg=("$@")
local carg=${#arg[@]}

	for ((i=0;i<$carg;i++))
	do
		echo "$(expr $i + 1)) ${arg[$i]}"
	done
#Menu "naga langit" nada raja
#akan menghasilkan 3 mnu
#Menu $(ls) 
#menu berasal dari hasil ls ,jadi mnu bisa berbentuk list secara vertikal atau bsa jga secara horizontal terpisah kan spasi
}
InputManul(){
	echo -e "\n[ $1 ]"
	read -p "Input : " $2
#InputManul "judul input" namavariable
#hasil akan di tampung di variable,sebaiknya variable penampung nya global
}
ErrorSalact(){
	echo -e "$R\nwrong select....\n$NC"
}
ListNet(){

	echo "$(ip -4 addr | grep : | cut -d : -f2 | tr -d " ")"
#hasilnya akan berbentuk list vertikal dari interface net
}
GetIp(){
	echo $(ip addr show $1 | grep -E -o "[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}\.[[:digit:]]{1,3}/" | tr -d "/")
#GetIp nama_interface 
}
CountLine(){
	echo "$1"  | wc -l
#CountLine $list
#hasilnua jumlah dari list, inputnya harus berberntuk list
}
SelectLine(){
	echo "$1" | sed -n $2'p'
#SelectLine $list pilihbaris
#memilih baris dari list
}


