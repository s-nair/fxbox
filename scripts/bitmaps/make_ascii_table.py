'''

ASCII Table MEM File Generator for FPGA ROM

'''

#!/cygdrive/c/python_27_amd64/files/python

from __future__ import print_function

path_src = r'C:\fpga\projects\FxBox\scripts\bitmaps\font\8x8_bitmap_font_dhepper.txt'
path_dest = r'C:\fpga\projects\FxBox\rom\mem\ascii_table_rom.mem'

with open(path_dest, 'w+') as out_file:
	with open(path_src, 'r') as in_file:
	
		j = 0
		
		for line in in_file.readlines():
		
			# 183C3C1818001800
			line_in = line[line.find('{') + 1 : line.find('}')].rstrip().lstrip().replace(', ', '').replace('0x','')
			
			# ['00011000', '00111100', '00111100', '00011000', '00011000', '00000000', '00011000', '00000000']
			bitmap_in = ['{0:08b}'.format(int(line_in[ (i * 2) : (i * 2) + 2], 16)) for i in range(8)]
			
			# [('0', '0', '0', '0', '0', '0', '0', '0'), ('0', '0', '0', '0', '0', '0', '0', '0'), ('0', '1', '1', '0', '0', '0', '0', '0'), ('1', '1', '1', '1', '1', '0', '1', '0'), ('1', '1', '1', '1', '1', '0', '1', '0'), ('0', '1', '1', '0', '0', '0', '0', '0'), ('0', '0', '0', '0', '0', '0', '0', '0'), ('0', '0', '0', '0', '0', '0', '0', '0')]
			bitmap_out_t = zip(*bitmap_in)
			
			# ['00000000', '00000000', '01100000', '11111010', '11111010', '01100000', '00000000', '00000000'] (reversed -> ['00000000', '00000000', '00000110', '01011111', '01011111', '00000110', '00000000', '00000000'])
			bitmap_out = [''.join(str(j) for j in reversed(i)) for i in bitmap_out_t]
			
			# 0000065F5F060000
			line_out = ''.join(['{0:02X}'.format(int(i, 2)) for i in bitmap_out])

			# write out to file
			if (j == 0):
				out_file.write(line_out)
			else:
				out_file.write('\n' + line_out)	
			j += 1