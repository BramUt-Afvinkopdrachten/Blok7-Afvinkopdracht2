printf "Score 1: "
read score1

printf "Score 2: "
read score2

printf "Score 3: "
read score3

printf "Score 4: "
read score4

printf "Score 5: "
read score5

avg=$(echo "scale=2; ($score1 + $score2 + $score3 + $score4 + $score5) / 5" | bc )
printf "Gemiddelde score: %.1f\n" ${avg/./,}
