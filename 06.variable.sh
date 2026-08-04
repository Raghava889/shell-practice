#!/bin/bash

echo "All variables passwd to script: $@"
echo "How many variables passd: $#"
echo "This is the first variable: $1"
echo "What is the script name: $0"
echo "Who is running the script: $USER"
echo "From which directory the script running: $PWD"
echo "User home directory: $HOME"
echo "current script process id: $$"
echo "List out the line numbers: $LINENO"