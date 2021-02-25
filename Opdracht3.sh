echo "Voer een dag in:"
read day

echo "Voer een maand in:"
read month

echo "Voer een jaar in:"
read year


lengte=${#year}
if [ $lengte -gt 2 ]; then
	year=${year:$lengte-2:2}
fi

# Weghalen van 0 voor getallen.
if [[ $day == 0* ]]; then
	day=${day: -1}
fi

if [[ $month == 0* ]]; then
	month=${month: -1}
fi

if [[ $year == 0* ]]; then
	year=${year: -1}
fi

echo "${year:$lengte-2:2}"

if (( $month * $day == $year )); then
	printf "Magisch jaar: %02d/%02d/%02d\n" $day $month $year
else
	printf "Geen magisch jaar: %02d/%02d/%02d\n" $day $month $year
fi

