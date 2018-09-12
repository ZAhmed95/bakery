class BakeryItem
  attr_reader :name, :price
  def initialize(name, image_link, price)
    @name = name
    @image_link = image_link
    @price = price
  end

  def image_link
    "#{@type}s/#{@image_link}"
  end
end