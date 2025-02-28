README.md:
	echo "name of project is Guessing game project and the current time and date is:" > README.md
	date '+%Y-%m-%d %H:%M:%S' >> README.md
	echo "the script contains the following amount of lines:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
