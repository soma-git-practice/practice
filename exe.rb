require 'sinatra'
require_relative 'common'

get '/' do
  erb :index
end

get '/users/:page', provides: 'json' do
  head = (params[:page].to_i - 1) * 5
  users = User.limit(5).offset(head)

  if head.negative? || users == []
    raise not_found
  end

  users.to_json
end