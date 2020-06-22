#!/bin/bash

file_name=spanish-id-starts-from-78M.lst
line_value="78012346A"

# find line number
line_number=$(grep -m 1 -n $line_value $file_name | awk '{split($0,a,":"); print a[1]}')
next_line_number=$(( $line_number + 1 ))

# line count
total_lines_number=$(wc -l < $file_name)

# length of the bottom file
length_bottom_file=$(( $total_lines_number - $line_number ))

# create top file
head -n $line_number $file_name > top_$file_name

# create bottom file
sed -n "${next_line_number},${total_lines_number}p" $file_name > bottom_$file_name
