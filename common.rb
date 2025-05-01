require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'dev.db'
)

class Migrate < ActiveRecord::Migration[7.0]
  def self.start
    create_table :users do |t|
      t.string :name
      t.string :quote
    end
    puts 'Migrate START'
  end

  def self.stop
    drop_table :users
    puts 'Migrate STOP'
  end
end

class User < ActiveRecord::Base
end