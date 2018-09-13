require 'sinatra'
require './mail'
require './database'
include Database

get '/' do
  erb :index
end

get '/cookies' do
  erb :cookies, locals: {cookies: Database.get_cookies}
end

get '/cakes' do
  erb :cakes, locals: {cakes: Database.get_cakes}
end

get '/muffins' do
  erb :muffins, locals: {muffins: Database.get_muffins}
end

get '/catalog' do
  erb :catalog
end

post '/catalog' do
  from = "zaheen.ahmed@ziasbakery.com"
  to = params[:email].to_s
  catalog = erb :catalog_list, {layout: false, locals: {catalog: Database.get_catalog}}
  SGMail.new(from, to, catalog)
  redirect '/'
end

get '/style.css' do
  headers 'Content-Type' => 'text/css'
  scss :style
end