require 'spec_helper'

describe 'Sinatra::Application'  do
  include Rack::Test::Methods

  it "should load the home page" do
    get '/'
    expect(last_response).to be_ok
  end

  it "should say 'hello world'" do
    get '/'
    expect(last_response.body).to include "hello world"
  end

  it "should not load the home page" do
    get '/home'
    expect(last_response).to_not be_ok
  end

  it "should not load the taco page" do
    get '/taco2'
    expect(last_response).to_not be_ok
  end
end
