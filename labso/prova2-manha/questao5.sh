#!/bin/bahs
#Aluno: Diego Dias 
# script para  verifica ip 


echo -e “33[32m digite a faixa de ip a ser scaneada (ex: 10.0.0.1-35): 33[m”
read ip
base=$(echo “$ip” | cut -d “.” -f 1-3) 
var1=$(echo “$ip” | cut -d “.” -f 4 | cut -d “-” -f 1) 
var2=$(echo “$ip” | cut -d “.” -f 4 | cut -d “-” -f 2) d

while test “$var1” -le “$var2” 
do
ping -c 1 -W 1 “$base”.”$var1″ > /dev/null 

if [ “$?” -ne 1 ] 
then
nome=$( nslookup “$base”.”$var1″ | fgrep “name =” | cut -d \= -f 2  )
echo -e “33[32m $base.$var1 on         $nome 33[m”
else
echo -e “33[31m $base.$var1 off 33[m”
fi
var1=$(( $var1 + 1))
done
