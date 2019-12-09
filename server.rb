require 'sinatra'
require 'chucknorris'
set :port, 3000

get '/' do
  @joke = ChuckNorris.random
 while @joke.include?("rape")
  puts "Rape jokes are not okay!"
   @joke = ChuckNorris.random
 end

  erb :index
end