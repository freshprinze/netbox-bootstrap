#!/bin/bash

# while read -r key value; do
# 	echo "XXXXXXXXXXXXXXXXX $key = $value"
# done < <((sops --decrypt --input-type dotenv --output-type json enc.env) | jq -r 'to_entries[] | "\(.key) \(.value)"')
# readarray -t input < <((sops --decrypt --input-type dotenv --output-type json enc.env) | jq -r 'to_entries[] | .key + "=" + (.value | @sh)')
# readarray -t input < <(grep -vxE '[[:blank:]]*([#].*)?' .env)

readarray -t input < <((sops --decrypt --input-type dotenv --output-type dotenv enc.env) | grep -vxE '[[:blank:]]*([#].*)?')

for each in ${input[@]}; do

	if [[ $each == TF_* ]]; then
		IFS='=' read -r key val <<<"$each"
		prefix_removed=${key#"TF_"}

		export "TF_VAR_${prefix_removed,,}=$val"
	else
		export $each
	fi
done
