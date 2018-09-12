# this file mimics a database containing all the bakery products
# in a real project, this file, and all associated method calls,
# would be replaced by a real database
module Database
  require './cookie'
  require './cake'
  require './muffin'

  @cookies = [
    Cookie.new("Chocolate Chip", "cookies.jpg", 1, 10),
  ]

  def get_cookies
    @cookies
  end
end

