require 'yaml'

class AnaEnders < Sinatra::Base  
  register Sinatra::AdvancedRoutes

  BLOGS = YAML.load(File.open('config/blogs.yml'))
  LAST_BLOG = BLOGS.last

  get '/javascripts/application.js' do
    coffee :'javascripts/application'
  end
  
  get '/javascripts/dialog.js' do
    coffee :'javascripts/dialog'
  end

  get '/' do
    haml :index
  end

  get '/stylesheets/app.css' do
    scss :'stylesheets/app'
  end

  get '/portfolio' do
    @section1 = YAML.load(File.open('config/portfolio.yml'))
    @section2 = YAML.load(File.open('config/personal.yml'))
    @section3 = YAML.load(File.open('config/print.yml'))
    @section4 = YAML.load(File.open('config/woodwork.yml'))
    haml :portfolio
  end

  get '/blog' do
    load_blog(LAST_BLOG['url'])
  end

  BLOGS.collect {|b| b['url'] }.each do |key|
    get "/blog/#{key}" do
      load_blog(key)
    end
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
end
