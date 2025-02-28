
#for loop to generate random  nr. of files (used for testing) (less than 100)
random_number=$((RANDOM % 100 + 1))
for ((i = 1; i <= random_number; i++));do
	touch "$i.txt"
done



function guess_checker {
if [[ $guess -eq $(ls | grep -v '^d' | wc -l) ]]
then
        echo "YAAAY, you did it!!!!"
	z=0 #exit signal
else
        if [[ $guess -lt $(ls | grep -v '^d' | wc -l) ]]
        then
                echo "aaah, no sorry, go higher"
        else
                echo "uh uh, nope, it's lower"
        fi
fi
}

z=1
while [[ $z -eq 1 ]]
do
read -p "how many files do you think are here in this directory?" guess
guess_checker $guess
done
