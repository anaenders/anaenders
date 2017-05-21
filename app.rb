class AnaEnders < Sinatra::Base
  register Sinatra::AdvancedRoutes

  get '/javascripts/application.js' do
    coffee :'javascripts/application'
  end

  get '/' do
    haml :index
  end

  get '/stylesheets/app.css' do
    scss :'stylesheets/app'
  end

end
