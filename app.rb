require 'bundler'
Bundler.require

class SpaceCatApp < Sinatra::Application
    get '/spacecats'  do
        @spacecats = SpaceCats.all
        erb :index  
    end

    get '/spacecats/edit/:id'
        @spacecat = Spacecat.get(params[:id])
        erb :edit
    end

    get '/spacecats/new' do
        @spacecats = SpaceCat.new
        erb :new
    end

    get '/spacecats/:id' do
        @spacecat = Spacecat.get(params[:id])
        erb :show
    end
    post '/spacecats' do
        @spacecat = Spacecat.new(params[:spacecats])
        @spacecat.save
        erb: edit
    end


    delete '/spacecats/:id do'
    Spacecat.get(params[:id]).destroy
    redirect 'spacecats'
    end
end