require 'pry'
require 'sinatra'

get '/' do
  erb :index
end

get '/api', provides: 'json' do
  data = [
    {
      team: 'A',
      member: [
        { name: '田中', age: 25, sex: '男' },
        { name: '佐藤', age: 42, sex: '男' },
        { name: '鈴木', age: 32, sex: '女' },
      ]
    },
    {
      team: 'B',
      member: [
        { name: '山本', age: 40, sex: '女' },
        { name: '伊東', age: 35, sex: '男' },
        { name: '山田', age: 28, sex: '女' },
      ]
    }
  ]
  data.to_json
end