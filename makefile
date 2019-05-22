README.md: guessinggame.sh
	echo "# Guessing game" > README.md
	echo "" >> README.md
	echo "Generated at:" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "Number of lines in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
