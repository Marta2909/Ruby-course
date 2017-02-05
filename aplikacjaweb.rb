require 'sinatra'
require 'sinatra/reloader'

get '/me' do
  now = Time.now
  erb :szablon, locals: {date: now}
end

get '/hello' do
  erb :hello
end

get '/' do
  erb :index
end

post '/calculate' do

  years = params["years"].to_i
  amount = params["amount"].to_f
  percent = params["percent"].to_f/100.0
  new_amount = amount * ((1+percent/365.0)**(years*365))

  erb :calculate, locals: { new_amount: new_amount }
end
