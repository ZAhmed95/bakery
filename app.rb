require 'sinatra'
require './database'
include Database

get '/' do
  erb :index
end

get '/cookies' do
  erb :cookies, locals: {cookies: Database.get_cookies}
end

get '/cakes' do
  erb :cakes
end

get '/muffins' do
  erb :muffins
end

get '/style.css' do
  scss :style
end