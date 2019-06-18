files=$(ls | wc -l)
state=1
while [[ state -eq 1 ]]
do
	echo "How many files are in the current directory?"
	read response
	if [[ $response -eq $files ]]
	then
		let state=0
	elif [[ $response -gt $files ]]
	then
		echo "Sorry, that number is too high."
		echo "Try again."
	else
		echo "Sorry, that number is too low."
		echo "Try again."
	fi
done
echo "Congratulations!"
echo "That is correct!"
