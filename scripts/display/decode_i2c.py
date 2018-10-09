'''

I2C Protocol Decoder

Notes:
	1) must export .ctf file from Active-HDL Simulator
	2) SDA, SCL must be highlighted (in that order) when exporting
	3) values must be comma-separated, with "Short" header format and only "Time Column" displayed

'''

#!/cygdrive/c/python_27_amd64/files/python

path_src = r"C:\fpga\projects\FxBox\wfrms\display_i2c.ctf"
path_dest = r"C:\fpga\projects\FxBox\scripts\display\data\display_i2c.txt"

class State:
	IDLE = "IDLE"
	START = "START"
	ADDR = "ADDR"
	ACK0 = "ACK0"
	DATA = "DATA"
	ACK1 = "ACK1"
	ERROR = "ERROR"

with open(path_dest, 'w+') as out_file:
	with open(path_src, 'r') as in_file:
		
		ps = State.IDLE
		
		rw = 0
		address = [''] * 8
		data = [''] * 8
		
		bit_ctr = 0
		scl_ctr = 0
		
		in_file.readline()
		
		for line in in_file.readlines():
			if line.find(',') != -1:
			
				data_clk = line[line.find(',') + 1 :: ].rstrip(',\n').replace(' ','').split(',')
				
				sda = data_clk[0]
				scl = data_clk[1]
				
				if (ps == State.IDLE):
					
					if (scl == '0'):
						ps = State.ERROR
					elif (sda == '0'):
						ps = State.START
					
				elif (ps == State.START):
					
					if (sda == 'H'):
						ps = State.ERROR
					elif (scl == '0'):
						ps = State.ADDR
				
				elif (ps == State.ADDR):
					
					# all 8 address bits read
					if (bit_ctr == 8):
						rw_str = "Write to" if (rw == 0) else "Read from"
						#print ("%s 0x%02X" % (rw_str, int(''.join(address[0:7]), 2)))
						out_file.write(rw_str + " 0x{0:02X}\n".format(int(''.join(address[0:7]), 2)))
						bit_ctr = 0
						ps = State.ACK0
						
					# SCL high, sample SDA
					elif (scl == 'H'):
						address[bit_ctr] = '1' if (sda == 'H') else '0'
						bit_ctr += 1
				
				elif (ps == State.ACK0):
					
					# SCL high, sample SDA
					if (scl == 'H'):
						if (sda == 'H'):
							#print "NACK"
							out_file.write("NACK\n")
						ps = State.DATA
				
				elif (ps == State.DATA):
					
					# all 8 data bits read
					if (bit_ctr == 8):
						#print ("0x%02X" % int(''.join(data), 2))
						out_file.write("0x{0:02X}\n".format(int(''.join(data), 2)))
						bit_ctr = 0
						ps = State.ACK1
						
					# SCL high, sample SDA
					elif (scl == 'H'):
					
						scl_ctr += 1
						
						# SDA changed on SCL high
						if (scl_ctr == 2 and sda == 'H'):
						
							# detected STOP condition, back to IDLE
							if (bit_ctr == 1):
								ps = State.IDLE
								
							# full byte not finished, error
							else:
								ps = State.ERROR
							bit_ctr = 0
						else:
							data[bit_ctr] = '1' if (sda == 'H') else '0'
							bit_ctr += 1
							
					else:
						scl_ctr = 0
				
				elif (ps == State.ACK1):
				
					# SCL high, sample SDA
					if (scl == 'H'):
						if (sda == 'H'):
							#print "NACK"
							out_file.write("NACK\n")
						ps = State.DATA
				
				elif (ps == State.ERROR):
					
					#print "ERROR"
					out_file.write("ERROR\n")
					
					# bus reset, back to IDLE
					if (scl == 'H' and sda == 'H'):
						ps = State.IDLE
					