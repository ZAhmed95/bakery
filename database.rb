# this file mimics a database containing all the bakery products
# in a real project, this file, and all associated method calls,
# would be replaced by a real database
module Database
  require './cookie'
  require './cake'
  require './muffin'

  @cookies = [
    Cookie.new("Chocolate Chip", "chocolate_chip.jpg", "You can't go wrong with the classics.", "$1.00", "$10.00"),
    Cookie.new("Oatmeal", "oatmeal.jpg", "\"I'm on a diet, but I still want a cookie.\" The solution is here.", "$0.75", "$7.50"),
    Cookie.new("Full Chocolate", "chocolate.jpg", "When part chocolate just isn't enough.", "$1.20", "$12.00"),
    Cookie.new("Butter Cookies", "butter_cookies.jpg", "Feel the rich, buttery goodness melt in your mouth. Truly a cookie for the high class.", "$1.50", "$15.00"),
  ]

  @cakes = [
    Cake.new("Angel Food Cakes", "angel_food_cake.jpg", "Totally delicious and healthy angel food cake. Will send you to heaven. Not literally, though.", "$10.00"),
    Cake.new("Birthday Cakes", "birthday_cake.jpg", "Birthday cakes in various sizes, types, and flavors. Fully customizable frosting, designs, and names.", "$30.00 to $70.00"),
    Cake.new("Wedding Cakes", "wedding_cake.jpg", "Get the perfect wedding cake for your special day. Any flavor, any style, any height.", "Starting at $300"),
    Cake.new("Chiffon Cakes", "chiffon_cake.jpg", "Delicious chiffon cakes that come pre-decorated, or completely plain if you want to decorate it yourself.", "Starting at $5.00"),
    Cake.new("Cheese Cakes", "cheese_cake.jpeg", "Tell your conscience and diet to screw off, and embrace the dark (and delicious) side.", "$7.00 to $20.00"),
    Cake.new("Plain Cakes", "plain_cake.jpg", "Buy this if either: you're strapped for cash and still want a delicious treat, OR: you're just a plain cake kinda person.", "Starting at $3.00"),
  ]

  @muffins = [
    Muffin.new("Chocolate Chip", "chocolate_chip_muffin.jpg", "Always popular, always in style.", "$1.75", "$17.50"),
    Muffin.new("Pumpkin", "pumpkin_muffins.jpg", "Fall is here, get into the spirit of the season with our delicious pumpkin muffins.", "$2.00", "$20.00"),
    Muffin.new("Banana", "banana_muffin.jpg", "It's fruity, it's healty, it's BANANA!", "$1.80", "$18.00"),
    Muffin.new("Berry", "berry_muffin.jpg", "Delicious pastries infused with the fruits of mother nature. Choose your favorite from: blueberry, raspberry, strawberry.", "$2.00", "$20.00"),
    Muffin.new("Honey", "honey_muffins.jpg", "What doesn't get improved by adding honey?", "$1.80", "$18.00"),
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

  def get_catalog
    {
      cakes: @cakes,
      cookies: @cookies,
      muffins: @muffins,
    }
  end
end

