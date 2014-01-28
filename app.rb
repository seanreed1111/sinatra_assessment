require 'bundler'
Bundler.require

class SpaceCatApp < Sinatra::Application
    get '/spacecats'  do
        @spacecats = SpaceCats.all
        erb :index  
    end

    get '/spacecats/new' do
        @spacecats = SpaceCat.new
        erb :new
    end

    post '/spacecats' do
        @spacecats = Spacecat.new(params[:spacecats])
    end
end