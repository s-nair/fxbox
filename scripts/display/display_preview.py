'''

Display Preview

Notes:
	1) previews look better against black (cmd-prompt) background

'''

#!/cygdrive/c/python_27_amd64/files/python

path_src = r"C:\fpga\projects\FxBox\scripts\display\data\display_i2c.txt"
path_dest = r"C:\fpga\projects\FxBox\scripts\display\previews\preview.txt"

with open(path_dest, 'w+') as out_file:
	with open(path_src, 'r') as in_file:
	
		boundary = '-' * 128
		find_index = -1
		
		page = [[0 for x in range(128)] for y in range(8)]
		page_num = 0
		col = 0
		
		for line in in_file.readlines():
		
			if (line.find("Write to") >= 0):
				find_index = 1
			elif (find_index == 1):
				if (line.find("0x40") >= 0):
					find_index = 0
					print boundary
					out_file.write(boundary + '\n')
					continue
				else:
					find_index = -1
			
			
			if (find_index == 0):
			
				data = line.lstrip('0').lstrip('x').rstrip('\n')
				data = format(int(data, 16), "08b")
				
				for row in range(8):
					page[row][col] = ' ' if (data[row] == '0') else '*'
				
				col += 1
				
				if (col == 128):
					page_num += 1
					for k in reversed(range(8)):
						print '|' + ''.join(page[k]) + '|'
						out_file.write('|' + ''.join(page[k]) + '|\n')
					# UNCOMMENT TO OUTLINE PAGE BOUNDARIES ON SCREEN
					#print boundary
					#out_file.write(boundary + '\n')
					col = 0
				
				if (page_num == 8):
					print boundary
					out_file.write(boundary + '\n')
					page_num = 0
