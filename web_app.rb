require 'sinatra/base'
require "sinatra/reloader"

class MyApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  get "/taco" do
     "the cake is a lie"
  end

  get "/" do
    "hello world"
  end
end
