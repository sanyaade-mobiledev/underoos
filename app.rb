
require 'sinatra'
require 'haml'

module App
  class Application < Sinatra::Base

    set :public,  File.join(File.dirname(__FILE__), 'public')
    set :root,    File.join(File.dirname(__FILE__), 'app')

    get '/' do
      @page = 'home'
      # haml :index, :layout => :"/layouts/layout"
      haml :index
    end

    get '/:name' do
      @page = params[:name]
      # haml :"/#{@page}", :layout => :"/layouts/layout"
      haml :"/#{@page}/index", :layout => false
    end

  end
end

