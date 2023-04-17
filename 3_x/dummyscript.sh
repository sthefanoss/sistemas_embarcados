echo "É de manha? [sim/nao]"
read resp
if [[ $resp == "sim" ]]; then
  echo "bom dia"
elif [[ $resp = "nao" ]]; then
  echo "boa tarde"
else
  $0
fi
