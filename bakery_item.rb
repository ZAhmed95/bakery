class BakeryItem
  attr_reader :name, :description, :price
  def initialize(name, image_link, description, price)
    @name = name
    @image_link = image_link
    @description = description
    @price = price
  end

  def image_link
    "#{@type}s/#{@image_link}"
  end
end