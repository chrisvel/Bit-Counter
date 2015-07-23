require 'bit_counter'

describe BitCounter do

  # let(:bitc) { BitCounter.new }
  # subject{ bitc }

  context '.create_bit_lookup_table' do

    it "allows to create a hash as a lookup table" do
      blut = subject.create_bit_lookup_table
      expect(blut).to be_instance_of(Hash)
    end

    it "allows to create a valid lookup table for bits" do
      blut = subject.create_bit_lookup_table
      expect(blut).to include(0 => 0,1 => 1, 2 => 1, 3 => 2, 8 => 1, 16 => 1, 32 => 1, 64 => 1, 255 => 8)
    end

  end

  context '.read_file' do

    it "allows to read file" do
      subject.file_path = './landm.jpg'
      expect(subject.read_file).to be_instance_of(File)
    end

  end

  context '.count_bits' do

    it "must not return nil" do
      subject.create_bit_lookup_table
      subject.file_path = './landm.jpg'
      subject.read_file
      bits1 = subject.count_bits
      expect(bits1).to_not be_nil
    end

  end

end
