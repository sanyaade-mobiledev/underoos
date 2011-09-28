
require 'compass'
require 'sinatra'
require 'sinatra/reloader'
require 'haml'
require 'sass'

module Underoos
  class Application < Sinatra::Base

    set :root,    File.dirname(__FILE__)
    set :views,   File.join(File.dirname(__FILE__), 'app')
    set :public,  File.join(File.dirname(__FILE__), 'public')

    configure do
      Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config', 'compass.config'))
    end

    configure :development do
      register Sinatra::Reloader
    end

    get '/stylesheets/:name.css' do
      content_type 'text/css', :charset => 'utf-8'
      scss(:"stylesheets/#{params[:name]}", Compass.sass_engine_options )
    end

    get '/' do
      # haml :index, :layout => :"/layouts/layout"
      haml :"views/#{:index}"
    end

  end
end

