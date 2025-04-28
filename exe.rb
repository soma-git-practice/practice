require 'pry'
require 'sinatra'

get '/' do
  erb :index
end

get '/item', provides: 'json' do
  data = { name: '太郎' }
  data.to_json
end