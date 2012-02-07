
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
      @lorem_tiny = 'Lorem ipsum dolor sit amet.'
      @greys = [
        {prop:'$black', hex:'#000'},
        {prop:'$grey1', hex:'#111'},
        {prop:'$grey2', hex:'#222'},
        {prop:'$grey3', hex:'#333'},
        {prop:'$grey4', hex:'#444'},
        {prop:'$grey5', hex:'#555'},
        {prop:'$grey6', hex:'#666'},
        {prop:'$grey7', hex:'#777'},
        {prop:'$grey8', hex:'#888'},
        {prop:'$grey9', hex:'#999'},
        {prop:'$greyA', hex:'#aaa'},
        {prop:'$greyB', hex:'#bbb'},
        {prop:'$greyC', hex:'#ccc'},
        {prop:'$greyD', hex:'#ddd'},
        {prop:'$greyE', hex:'#eee'},
        {prop:'$white', hex:'#fff'}
      ]
      @rainbow = [
        {prop:'$magenta', hex:'#ff00ff'},
        {prop:'$cyan',    hex:'#00ffff'},
        {prop:'$red',     hex:'#b22222'},
        {prop:'$orange',  hex:'#f26522'},
        {prop:'$yellow',  hex:'#ffc40d'},
        {prop:'$green',   hex:'#46a546'},
        {prop:'$blue',    hex:'#268bd2'},
        {prop:'$indigo',  hex:'#4b0082'},
        {prop:'$violet',  hex:'#ee82ee'}
      ]
      @ci_colors = [
        {prop:'$primary_ci', hex:'#268bd2'}
      ]
      @status = [
        {prop:'$standard', hex:'#f5f5f5'},
        {prop:'$info',     hex:'#999'},
        {prop:'$important',hex:'#268bd2'},
        {prop:'$success',  hex:'#46a546'},
        {prop:'$warning',  hex:'#ffc40d'},
        {prop:'$alert',    hex:'#f26522'},
        {prop:'$error',    hex:'#b22222'},
        {prop:'$danger',   hex:'#b22222'}
      ]
      @components = [
        {prop:'component_normal', hex:'#666'},
        {prop:'component_active', hex:'#fff'},
        {prop:'component_bg', hex:'transparent'},
        {prop:'component_bg_hover', hex:'#eee'},
        {prop:'component_bg_active', hex:'#268bd2'},
        {prop:'component_border', hex:'#ccc'},
        {prop:'component_border_alt', hex:'#b3b3b3'},
        {prop:'disabled_color', hex:'#bbb'},
        {prop:'disabled_bg', hex:'#eee'},
        {prop:'disabled_border', hex:'#ccc'},
        {prop:'focus_border', hex:'rgba(82,168,236,0.8)'}
      ]
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

