'''

Convert bitmap font table to python dictionary syntax

Notes:
	1) output needs some massaging on special characters

'''

#!/cygdrive/c/python_27_amd64/files/python

path_src = r'C:\fpga\projects\FxBox\scripts\bitmaps\font\8x8_bitmap_font_dhepper.txt'
path_dest = r'C:\fpga\projects\FxBox\scripts\bitmaps\font\bitmap_parsed_table.txt'

with open(path_dest, 'w+') as out_file:
	with open(path_src, 'r') as in_file:
		for line in in_file.readlines():
			if line.find('(') != -1:
				line_out = '\'' + line[line.find('(') + 1 : line.find(')')] + '\'   :   \'' + line[line.find('U+') + 4 : line.find('U+') + 6] + '\','
				out_file.write(line_out + '\n')