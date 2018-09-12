require './bakery_item'

class Cake < BakeryItem
  def initialize(name, image_link, price)
    super(name, image_link, price)
    @type = "cake"
  end
end