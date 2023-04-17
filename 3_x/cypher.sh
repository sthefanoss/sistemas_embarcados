if [[ $# != 1 ]]; 
then
  echo "chame $0 [caminho/entrada.txt]"
  exit 1
fi

inputPath=$1
original=abcdefghijklmnopqrstuvxwyz
key=eaiyoubcdfghjklmnpqrstzwxv
original=$original${original^^}
key=$key${key^^}

input=$(cat $inputPath)
output=$(echo $input | tr $original $key)
decyfered=$(echo $output | tr $key $original)

echo "input:            ${input}"
echo "output (cyfered): ${output}"
echo "output decyfered: ${decyfered}"
