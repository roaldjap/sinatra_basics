require 'rubygems'
require 'sinatra'
require 'haml'

get '/' do 
  "Hello, World!"
end

get '/about' do
  "thanks"
end

get '/about/:name' do
  "Roald #{params[:name]}"
end 

get "/form" do
  haml :form
end

post "/form" do
  "You said '#{params[:message]}'"
end

get "/secret" do
  haml :secret
end

post "/secret" do
  "you just said what? #{params[:secret].reverse}"
end

not_found do
  halt 404, 'page not found'
end