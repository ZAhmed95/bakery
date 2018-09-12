require './bakery_item'

class Cake < BakeryItem
  def initialize(name, image_link, description, price)
    super(name, image_link, description, price)
    @type = "cake"
  end
end