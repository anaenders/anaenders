require 'sinatra'
require 'haml'
require 'sass'
require 'yaml'
require 'builder'

BLOGS = YAML.load(File.open('config/blogs.yml'))
LAST_BLOG = BLOGS.last

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
  load_blog(LAST_BLOG['url'])
end

get '/blog/:key' do
  load_blog(params[:key])
end

get '/feed.rss' do
  @blogs = BLOGS
  builder :feed
end

def load_blog(key)
  @blog = BLOGS.select {|b| b['url'] == key }.first
  index = BLOGS.index(@blog)
  @prev = index > 0 ? BLOGS[index - 1] : nil
  @next = BLOGS[index + 1]
  @blogs = BLOGS
  haml :blog
end
