
require 'sinatra'
require 'haml'

module App
  class Application < Sinatra::Base

    set :public,  File.join(File.dirname(__FILE__), 'public')
    set :root,    File.join(File.dirname(__FILE__), 'app')

    # Setup some common copy blocks used in the styleguide
    before do
      @lorem = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
      @lorem_sm = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.'
      @lorem_dd = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'
      @default_message = "The default color, when no flag level is passed"
      @notice_message = "Used for basic messages, generally low priority"
      @important_message = "System updates, changes, something the user needs to know about"
      @success_message = "User did something right, signed in, signed out, submitted a form"
      @warning_message = "Changing some settings, System maintenance, or about to go offline"
      @alert_message = "Impending change is about to happen, about to be locked out"
      @error_message = "User did something wrong, couldn't sign in, stuff is busted"
    end

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

