#!/bin/bash
echo "Copying TF outputs to Params file"
kubectl get secret -n flux-system terraformsubnets -o json > subnets.json
n=0
for i in $(jq -r .data subnets.json | jq -r .[] ); do
key=$(jq -r '.data | keys['$n']' subnets.json)
key_2=${key//-/_}
name=$(echo "$i" | base64 --decode)
export $key_2=$name
echo $key_2
yq e -i '.management-cluster.'$key' = env('$key_2')' params.yaml
let n++
done
echo "Copy done"
rm subnets.json