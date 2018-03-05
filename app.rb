require "sinatra"
get '/' do
  "Hello World"
end

get '/secret' do
  "secret route is here"
end

get '/cat' do
  @cat_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
