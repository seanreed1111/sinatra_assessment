require 'bundler'
Bundler.require

class SpaceCatApp < Sinatra::Application
    get '/'  do
        erb :index  
    end

    get '/sean' do
        "Hello Sean"
    end
end