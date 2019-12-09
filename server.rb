require 'sinatra'
require 'chucknorris'
set :port, 3000

get '/' do
  @joke = ChuckNorris.random

  erb :index
end