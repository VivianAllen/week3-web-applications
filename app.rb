require "sinatra"
get '/' do
  "Hello World"
end

get '/secret' do
  "secret route is here"
end

get '/random cat' do
  @cat_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  @cat_name = params[:name]
  @cat_surname = params[:surname]
  p params
  erb(:index)
end
