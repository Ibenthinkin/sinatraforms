require "bundler/setup"
Bundler.require
# require "sinatra/activerecord"
# require "sinatra"
# require "require_all"

require_relative "../app.rb"
require_all "lib"


ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "db/jellybelly.db"
)
