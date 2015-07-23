class BitCounter

  attr_accessor :file_path, :data

  def initialize
    @hblt = {}
    @file_path = ''
    @data = []
    @bits1 = 0
  end

  def create_bit_lookup_table
    (0..255).each do |byt|
      bt1 = byt.to_s(2).count('1')
      @hblt[byt] = bt1
    end
    @hblt
  end

  def read_file
    File.open(@file_path, 'rb') do |file|
      file.each_byte do |byt|
        @data << byt
      end
    end
  end

  def count_bits
    @data.each { |b| @bits1 += @hblt[b] }
    @bits1
  end

end
