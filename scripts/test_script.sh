for i in $(jq -r ".[] | .name" personas.json)
  do
    echo Hello to SAP, $i
  done