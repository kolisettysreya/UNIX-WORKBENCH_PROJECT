number_of_lines=$(wc -l guessinggame.sh)
README.md:
    echo "# Guessing Game" >> README.md
    echo "This program helps you guess the number of files in the current directory." >> README.md
    echo "$(date)" >> README.md
    echo "Number of lines in guessinggame.sh: $(number_of_lines)" >> README.md
clean:
    rm -f README.md
