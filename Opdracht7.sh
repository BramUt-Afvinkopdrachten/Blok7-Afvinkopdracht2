printf "Naam: "
read name

first_name=$( echo "$name" | grep -oE "^[^ ]+" )

docenten=("jacob" "said" "tom")

if [[ "${docenten[@]}" =~ "$(echo ${first_name} | tr '[:upper:]' '[:lower:]')" ]]; then
	echo "Welkom geachte docent: $first_name"
else
	echo "Welkom gast: $first_name"
fi
