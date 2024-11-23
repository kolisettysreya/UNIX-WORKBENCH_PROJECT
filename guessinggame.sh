#!/bin/bash
get_file_count() {
  local number_of_files=$(ls -1 | wc -l)
  echo $number_of_files
}
actual_file_count=$(get_file_count)
echo "Welcome to the Guessing Game!"
echo "Guess the number of files in the current directory: "
read user_guess
while [[ $user_guess -ne $actual_file_count ]]; do
  if [[ $user_guess -lt $actual_file_count ]]; then
    echo "Your guess is too low. Try again: "
  else
    echo "Your guess is too high. Try again: "
  fi
  read user_guess
done
echo "Congratulations! You guessed the correct number of files: $actual_file_count"
