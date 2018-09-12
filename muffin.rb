require './bakery_item'

class Muffin < BakeryItem
  attr_reader :dozen_price
  def initialize(name, image_link, description, price, dozen_price)
    super(name, image_link, description, price)
    @dozen_price = dozen_price
    @type = "muffin"
  end
end