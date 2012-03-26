require 'sinatra'
require 'haml'
require 'sass'

get '/' do
  haml :index
end

get '/stylesheets/app.css' do
  scss :'stylesheets/app'
end

get '/about' do
  haml :about
end

get '/blog' do
  haml :blog
end
