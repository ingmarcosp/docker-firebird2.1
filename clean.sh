#/bin/sh

cont=firebird21332bit
img=firebird213

echo "Stopin Container"
docker stop $cont

echo "Removing container"
docker rm $cont

echo "Removing image"
docker rmi $img
