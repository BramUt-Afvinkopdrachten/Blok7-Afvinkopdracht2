echo "Voer een aantal seconden in."
read seconds
days=$(( $seconds / 86400 ))
seconds=$(( $seconds - (86400 * $days) ))

if [ $days -lt 10 ]; then
	days=0$days
fi

hours=$(( $seconds / 3600 ))
seconds=$(( $seconds - (3600 * $hours) ))

if [ $hours -lt 10 ]; then
	hours=0$hours
fi

minutes=$(( $seconds / 60 ))
seconds=$(( $seconds - (60 * $minutes) ))

if [ $minutes -lt 10 ]; then
	minutes=0$minutes
fi	
	
	
if [ $seconds -lt 10 ]; then
	seconds=0$seconds
fi

echo "$days:$hours:$minutes:$seconds"

