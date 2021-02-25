echo "Getal 1:"
read num1

echo "Getal 2:"
read num2

if [ num1 == 0 ] || [ num2 == 0 ]; then
	echo "Incorrecte invoer gevonden"
else
	echo "+: $(( num1 + num2 ))"
	echo "-: $(( num1 - num2 ))"
	echo "x: $(( num1 * num2 ))"
	echo "/: $(echo "scale=1; $num1 / $num2" | bc)"
	printf "^: %.1e\n" $(echo "scale=1; $num1^$num2" | bc)
fi
