#!/bin/bash 
#Aluno :Diego 
#  ler 


echo " exibir arquivo"
arq=$1

numero=$(wc -l < $arq)

echo " numero de linhas=$numero"

echo "exibir tamano =$numero"

if [[ $numero -lt 500]]; then 
 ls -lh $arq 
else 
  echo "arquivo pequeno"

fi 
