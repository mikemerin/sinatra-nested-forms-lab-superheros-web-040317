require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    get '/team' do
      erb :team
    end

    post '/team' do
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      members = params[:team][:members]
      @heroes = members.collect do |hero|
        SuperHero.new({name: hero[:name], power: hero[:power], bio: hero[:bio]})
      end
      erb :team
    end


end
