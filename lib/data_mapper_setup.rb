require 'data_mapper'
require 'dm-validations'
require 'dm-migrations'
require 'dm-constraints'

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postgres://localhost/lab_week_#{env}")

# DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{env}")
require './lib/models/user'
require './lib/models/task'
require './lib/models/tag'

DataMapper.finalize

DataMapper.auto_upgrade!
