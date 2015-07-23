require_relative 'lib/bit_counter'

puts ARGV[0]
puts "Size: #{File.open(ARGV[0],'rb').size/1000.0}Kb"

bitscan = BitCounter.new
bitscan.create_bit_lookup_table
bitscan.file_path = ARGV[0]
bitscan.read_file
bits1 = bitscan.count_bits

total_bits = File.open(ARGV[0],'rb').size*8
puts "found #{bits1} bits set to 1"
puts "found #{total_bits - bits1} bits set to 0"
