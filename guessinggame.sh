files=$(ls | wc -l)
state=1
while [[ state -eq 1 ]]
do
	echo "How many files are in the current directory?"
	read response
	if [[ $response -eq $files ]]
	then
		let state=0
	else
		echo "Sorry, that is incorrect. Try again."
	fi
done
echo "Congratulations! That is correct!"
