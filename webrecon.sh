#!/bin/bash
for palavra in $(cat $1)
do
resposta=$(curl -s -H "User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36" -o /dev/null -w “%{http_code}” $2/$palavra/)
if [ $resposta == “200” ]
then
echo “Diretorio Encontrado: $2/$palavra/”
fi
done
