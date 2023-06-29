#!/bin/bash

filename="students-list_0333.txt"
output_file="student-emails.txt"

cut -d',' -f1 $filename > $output_file
echo "Emails extracted and saved in $output_file"

