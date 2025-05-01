require 'faker'
require_relative 'common'

Faker::Config.locale = :ja

namespace 'migrate' do
  desc 'テーブル作成'
  task :on do
    Migrate.start
  end

  desc 'テーブル削除'
  task :of do
    Migrate.stop
  end
end

desc '追加'
task :sample do
  array = []
  1000.times do |t|
    array << { id: t+1, name: Faker::Name.name, quote: Faker::Quote.famous_last_words }
  end
  User.insert_all(array)
end