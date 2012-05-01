require 'sinatra'
require 'haml'
require 'sass'
require 'yaml'
require 'builder'

require 'rack/test'
require "sinatra/advanced_routes"
require 'sinatra_static'

class AnaEnders < Sinatra::Base  
  register Sinatra::AdvancedRoutes

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
  
  run! if app_file == $0

end

static_dir = File.join(File.dirname(__FILE__), 'static')

FileUtils.rm_rf(static_dir)
FileUtils.mkdir_p(static_dir)
SinatraStatic.new(AnaEnders).build!(static_dir)
FileUtils.cp_r(Dir.glob(File.join(File.dirname(__FILE__), 'public') + '/*'), static_dir)
