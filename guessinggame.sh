#!/usr/bin/env bash

function prompt() {
        echo "How many files are there in the current directory?"
	read answer
}

files=$(ls -l | grep -v '^total' | wc -l)

prompt
while [[ $answer -ne $files ]]; do
	if [[ $answer -gt $files ]]; then
		echo "Too high, try again."
	elif [[ $answer -lt $files ]]; then
		echo "Too low, try again."
	fi
	prompt
done

echo "Correct guess! Congratulations."

