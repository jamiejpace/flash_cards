
class CardGenerator
  attr_reader :filename, :file_data

  def initialize(filename)
    @filename = filename
    @file_data = read_cards_file(filename)
  end

  def read_cards_file(filename)
    File.open(filename, 'r') do |f|
      f.readlines.map(&:chomp)
    end
  end

  def edit_cards_text
    @file_data.map do |item|
      item.split(",")
    end
    # creates the cards somehow???

  end



end

#take file, split by lines into an array, then iterate over array to create cards???
