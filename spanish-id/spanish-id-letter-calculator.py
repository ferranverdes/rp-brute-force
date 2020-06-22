#!/usr/bin/python3

LETTER_SEQUENCE='TRWAGMYFPDXBNJZSQVHLCKE'

with open('spanish-id.lst', 'w') as output:
	with open('spanish-id-without-letter.lst', 'r') as f:
		for line in f:
			line = line.strip()
			digits = int(line)
			dni = line + LETTER_SEQUENCE[digits%23]
			output.write(dni + '\n')
