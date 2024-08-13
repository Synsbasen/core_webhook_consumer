require 'sinatra'

configure do
  set :port, 5000
end

post '/hooks/synsbasen_api' do
  puts request.body.read
end
