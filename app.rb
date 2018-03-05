require "sinatra"
get '/' do
  "Hello World"
end

get '/secret' do
  "secret route is here"
end

get '/cat' do
  erb(:index)
end
