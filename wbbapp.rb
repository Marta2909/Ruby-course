require 'sinatra'
require 'rack'

configure :development do
  Sinatra::Application.reset!
  use Rack::Reloader
end

  get '/hi' do
      "<html><body><h1>Hello Ruby!</h1><p> #{params.inspect} #{params.class}</p></body></html>"
  end
