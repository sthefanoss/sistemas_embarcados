file=algo.txt

while [[ ! -f $file ]]; do
  echo "estamos esperando"
  sleep 1
done
