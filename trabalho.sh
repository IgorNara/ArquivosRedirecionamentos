#!/bin/bash
sudo apt install fortune

fortune > mensagem1.txt
fortune > mensagem2.txt
fortune > mensagem3.txt

cat mensagem1.txt
cat mensagem2.txt
cat mensagem3.txt

cat mensagem1.txt mensagem2.txt mensagem3.txt > mensagens.txt
   cat mensagens.txt

cp mensagens.txt mensagens_antiga.txt
fortune >> mensagens_antiga.txt

wc mensagens.txt | awk '{print $1}' > linhas.txt

egrep -o 'a' mensagens.txt | wc -l > letras.txt 

ls -R /etc > saida.txt 2> erros.txt

ls -R /etc > saida_com_erros.txt 2>&1

cut -d ':' -f 1 /etc/passwd > usuarios.txt
awk -F ':' '{print $1}' /etc/passwd > usuarios.txt

cut -d ':' -f 1 /etc/passwd | sort > usuarios_ordenados.txt
