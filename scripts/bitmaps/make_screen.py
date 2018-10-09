'''

Screen MEM File Generator

Notes:
	1) converting from screen illustration (txt) files
	2) naming convention for input files: "screen_<name>.txt"

'''

#!/cygdrive/c/python_27_amd64/files/python

path_dir_src = r'C:\fpga\projects\FxBox\scripts\bitmaps\screens'
path_dir_dest = r'C:\fpga\projects\FxBox\rom\mem'

# ADD SCREENS AS NEEDED HERE
screens = ['clean', 'reverb', 'echo']

font_map = 	{	'NUL' :   '00',
				' '   :   '20',
				'!'   :   '21',
				'"'   :   '22',
				'#'   :   '23',
				'$'   :   '24',
				'%'   :   '25',
				'&'   :   '26',
				'\''  :   '27',
				'('   :   '28',
				')'   :   '29',
				'*'   :   '2A',
				'+'   :   '2B',
				','   :   '2C',
				'-'   :   '2D',
				'.'   :   '2E',
				'/'   :   '2F',
				'0'   :   '30',
				'1'   :   '31',
				'2'   :   '32',
				'3'   :   '33',
				'4'   :   '34',
				'5'   :   '35',
				'6'   :   '36',
				'7'   :   '37',
				'8'   :   '38',
				'9'   :   '39',
				':'   :   '3A',
				'//'  :   '3B',
				'<'   :   '3C',
				'='   :   '3D',
				'>'   :   '3E',
				'?'   :   '3F',
				'@'   :   '40',
				'A'   :   '41',
				'B'   :   '42',
				'C'   :   '43',
				'D'   :   '44',
				'E'   :   '45',
				'F'   :   '46',
				'G'   :   '47',
				'H'   :   '48',
				'I'   :   '49',
				'J'   :   '4A',
				'K'   :   '4B',
				'L'   :   '4C',
				'M'   :   '4D',
				'N'   :   '4E',
				'O'   :   '4F',
				'P'   :   '50',
				'Q'   :   '51',
				'R'   :   '52',
				'S'   :   '53',
				'T'   :   '54',
				'U'   :   '55',
				'V'   :   '56',
				'W'   :   '57',
				'X'   :   '58',
				'Y'   :   '59',
				'Z'   :   '5A',
				'['   :   '5B',
				'\\'  :   '5C',
				']'   :   '5D',
				'^'   :   '5E',
				'_'   :   '5F',
				'`'   :   '60',
				'a'   :   '61',
				'b'   :   '62',
				'c'   :   '63',
				'd'   :   '64',
				'e'   :   '65',
				'f'   :   '66',
				'g'   :   '67',
				'h'   :   '68',
				'i'   :   '69',
				'j'   :   '6A',
				'k'   :   '6B',
				'l'   :   '6C',
				'm'   :   '6D',
				'n'   :   '6E',
				'o'   :   '6F',
				'p'   :   '70',
				'q'   :   '71',
				'r'   :   '72',
				's'   :   '73',
				't'   :   '74',
				'u'   :   '75',
				'v'   :   '76',
				'w'   :   '77',
				'x'   :   '78',
				'y'   :   '79',
				'z'   :   '7A',
				'{'   :   '7B',
				'|'   :   '7C',
				'}'   :   '7D',
				'~'   :   '7E'	}

for screen in screens:
	screen_src = path_dir_src + r'\screen_' + screen + '.txt'
	screen_dest = path_dir_dest + r'\screen_' + screen + '_rom.mem'
	i = 0
	with open(screen_dest, 'w+') as out_file:
		with open(screen_src, 'r') as in_file:
			for line in in_file.readlines():
				for char in line.rstrip('\n'):
					if ( i == 0 ):
						out_file.write(font_map[char])
					else:
						out_file.write('\n' + font_map[char])
					i += 1
