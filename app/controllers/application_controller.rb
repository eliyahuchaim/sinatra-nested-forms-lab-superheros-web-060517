require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @info = params[:team]
      @member = params[:team][:member]
      # binding.pry
      erb :team
    end


end
