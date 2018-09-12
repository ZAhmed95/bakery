# this file mimics a database containing all the bakery products
# in a real project, this file, and all associated method calls,
# would be replaced by a real database
module Database
  require './cookie'
  require './cake'
  require './muffin'

  @cookies = [
    Cookie.new("Chocolate Chip", "cookies.jpg", "This is a chocolate chip cookie", 1, 10),
  ]

  @cakes = [
    Cake.new("Angel Food Cake", "angel_food_cake.jpg", "Totally delicious and healthy angel cake", 30),
  ]

  @muffins = [

  ]

  def get_cookies
    @cookies
  end

  def get_cakes
    @cakes
  end

  def get_muffins
    @muffins
  end
end

