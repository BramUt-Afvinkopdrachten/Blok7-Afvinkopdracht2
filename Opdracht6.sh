printf "Naam: "
read name

first_name=$( echo "$name" | grep -oE "^[^ ]+" )

docenten=("Jacob" "Said" "Tom")

if [[ "${docenten[@]}" =~ "${first_name}" ]]; then
	echo "Welkom geachte docent: $first_name"
else
	echo "Welkom gast: $first_name"
fi
