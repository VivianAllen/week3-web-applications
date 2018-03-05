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

post '/named-cat' do
  @cat_name = params[:name]
  p params
  erb(:index)
end

get '/cat-naming' do
  erb(:cat_form)
end
